#! /usr/bin/python3
from BaseRecord import Base
from datetime import datetime


class Record(Base):
    id: int
    type: int
    time: datetime

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.time = datetime.now()


class WhoHas(Record):
    type = 1

    class Data(Base):
        type: int = 3
        pdst: str
        psrc: str
        hwsrc: str

    data: Data = Data()


class WhoIs(Record):
    type = 2

    class Data(Base):
        type: int = 4
        hwsrc: str
        pdst: str

    data: Data = Data()


class PktreaderType(Base):
    type: int = 5
    mac_addr: str
    ip_addr: str
    time: datetime

    @classmethod
    def fromPktRecord(cls, pkt):
        mac_addr = pkt.data.hwsrc
        ip_addr = pkt.data.pdst
        time = pkt.time
        return cls(mac_addr=mac_addr, ip_addr=ip_addr, time=time)


if __name__ == "__main__":
    class obj_src2:
        type = 4

        class data:
            hwsrc = "hw_src2"
            pdst = "pdst_src2"


    dict_src2 = {
        "type": 4,
        "data": {
            "hwsrc": "hw_src2",
            "pdst": "pdst_src2"
        }
    }

    # obj = WhoIs(dict_src2)

    obj = WhoIs(time="333")

    print(obj)
    print(obj.time)
    print(obj.id)

    # print("id", obj.id)
    # print("id", type(obj.id))
    # print("data", type(obj.data))

    # obj = Record()
    # print(obj.fields)

    # objs = []
    # for i in range(50):
    #     obj1 = WhoHasData().get_arp_record()
    #     obj2 = IAtData().get_arp_record()
    #     objs.append(obj1)
    #     objs.append(obj2)

    # print(isinstance(), list))
    # print(isinsta)

    # t={
    # "sep":"--",
    # }
    # class
    # print(1,2,3, **t)
    # print(1,2,3, sep="--")
    #
    # print(end - start)
