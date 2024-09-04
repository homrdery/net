import sys
import os

PREFIX = os.path.dirname(__file__)
LIBDIR = os.path.join(PREFIX, "lib")
DBURL = f"sqlite:///{os.path.join(PREFIX,'my-testSniff.db')}"

sys.path.insert(0, LIBDIR)

from db.DataBase import DataBase

print(os.path.dirname(__file__))
db = DataBase(DBURL)

for ch in db.select_pktreader():
    print(ch)
