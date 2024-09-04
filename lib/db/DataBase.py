#! /usr/bin/python3
import os
import sys

from sqlalchemy import MetaData, create_engine, select, delete
from sqlalchemy.orm import Session
from db.Tables import Base, Pktreader, PktRecord
from RecordsType import PktreaderType


def transaction(func):
    def inner(self, *args, **kwargs):
        self.session.begin()
        try:
            func(self, *args, **kwargs)
        except:
            self.session.rollback()
            raise
        else:
            self.session.commit()
        self.session.close()

    return inner


class DataBase:
    def __init__(self, url: str):
        self.engine = create_engine(url)
        self.session = Session(self.engine)
        self.record_table = {}
        self.type_record = {}

    def init_db(self):
        meta = MetaData()
        meta.create_all(self.engine)
        Base.metadata.create_all(self.engine)

    def add_pkt(self, ops):
        operations = []
        merge = []
        for data in ops:
            operations.append(self.get_table_record(data))
            merge.append(self.get_table_record(PktreaderType.fromPktRecord(data)))
        self.execute(add=operations, merge=merge)
    @transaction
    def execute(self, add: list = [], merge: list = []):

        """
        :param op: операция или list [] операция
        :return:
        """

        self.session.add_all(add)
        for elem in merge:
            self.session.merge(elem)


    def register_table_record(self, class_table, class_record):
        self.record_table[class_record] = class_table

    def register_type_record(self, type_record: int, class_record):
        self.type_record[type_record] = class_record

    def get_table_record(self, record):
        cls_table = self.record_table[type(record)]
        return cls_table(**record.as_dict)

    def get_class_record(self, row):
        cls_record = self.type_record[row["type"]]
        return cls_record(**row)

    def get(self, id: int):
        with self.engine.connect() as con:
            result = None
            query = select(PktRecord).where(PktRecord.id == id)
            for row in con.execute(query):
                result = {}
                for k in con.execute(select(PktRecord)).keys():
                    v = getattr(row, k)
                    if v is not None:
                        result[k] = v
            return self.get_class_record(result)

    def select_pktreader(self):
        with self.engine.connect() as con:
            result = []
            query = select(Pktreader).order_by(Pktreader.time.asc())
            for row in con.execute(query):
                result.append((row[0], row[1], row[2]))
            return result

    def writer(self):
        with self.engine.connect() as con:
            result = None
            query = select(PktRecord).order_by(PktRecord.time.desc())
            ops = []
            for row in con.execute(query):
                rec = row[2]
                result = PktreaderType({"mac_addr": rec["hwsrc"], "ip_addr": rec["pdst"], "time": row[3]})
                ops.append(Pktreader(**result))

            self.execute(merge=ops)

    @transaction
    def compact_pktrecord(self, x: int = 25):
        for rec in self.session.query(PktRecord).order_by(PktRecord.time.desc()).offset(x).limit(1):
            self.session.query(PktRecord).where(PktRecord.id < rec.id).delete()

