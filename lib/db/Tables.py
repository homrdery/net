#! /usr/bin/python3
import sqlalchemy
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column
from sqlalchemy.types import DateTime
from datetime import datetime
import sqlalchemy_jsonfield


class Base(DeclarativeBase):
    pass


class PktRecord(Base):
    __tablename__ = "pkt_record"
    __allow_unmapped__ = True
    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    type: Mapped[int]
    data = sqlalchemy.Column(sqlalchemy_jsonfield.JSONField(enforce_string=False, enforce_unicode=False))
    time: Mapped[datetime] = mapped_column(DateTime, default=datetime.now)

class Pktreader(Base):
    __tablename__ = "pkt_reader"
    __allow_unmapped__ = True
    type: Mapped[int]
    mac_addr: Mapped[str] = mapped_column(sqlalchemy.String(30),primary_key=True)
    ip_addr: Mapped[str] = mapped_column(sqlalchemy.String(30))
    time: Mapped[datetime]

