import configparser
from typing import NamedTuple


class Params(NamedTuple):
    db_url: str = "sqlite:///my-test.db"


    @staticmethod
    def from_ini_file(filename: str):
        config = configparser.ConfigParser()
        config.read(filename)
        db_url = config.defaults()["dburl"]
        return Params(db_url=db_url)


if __name__ == "__main__":
    params = Params.from_ini_file("../../example.ini")
    print(params)
    params = Params()
    print(params)
