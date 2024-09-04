#! /opt/net/venv/bin/python3 


try:
    import sys
    import os
    import requests

    PREFIX = os.path.dirname(__file__)
    sys.path.insert(0, os.path.join(PREFIX, "lib"))
    from time import sleep
    from Parser import Parser
    from Logger import Logger

    parser = Parser.init()
    logger = Logger(parser.options.verbose)
    from Sniffer import Sniffer
    from signal import signal, SIGTERM
    from threading import Timer
    from db.DataBase import DataBase
    from db.Tables import PktRecord, Pktreader
    from RecordsType import WhoIs, WhoHas, PktreaderType
    from Params import Params
    params = Params()
except Exception as e:
    raise
try:
    EXIT = False


    def sig_handler(*args):
        global EXIT
        EXIT = True
        print(EXIT)


    signal(SIGTERM, sig_handler)

    if parser.options.config_file:
        params = Params.from_ini_file(parser.options.config_file)
    print (params.db_url)
    base = DataBase(params.db_url)
    base.init_db()
    base.register_table_record(PktRecord, WhoHas)
    base.register_table_record(PktRecord, WhoIs)
    base.register_table_record(Pktreader, PktreaderType)
    base.register_type_record(1, WhoHas)
    base.register_type_record(2, WhoIs)
    base.register_type_record(5, PktreaderType)


    sniffer = Sniffer(logger=logger, iface=parser.options.interface)
    timer = Timer(10, sig_handler)
    # timer.start()
    while not EXIT:
        sleep(5)
        print(f"stat: {sniffer.COUNT} {len(sniffer.operations)}")
        if len(sniffer.operations) > 50:
            cur_time = sniffer.perf.delta(count=sniffer.COUNT)
            sniffer.logger.msg_info(f"SPEED: {cur_time.speed_str()}")
            sniffer.logger.msg_info(f"Time betw iter:{cur_time}")
            test = sniffer.operations.copy()
            sniffer.operations.clear()
            data = []
            for obj in test:
                item = obj.as_dict
                item["time"] = item["time"].isoformat()
                data.append(item)
            s = requests.post("http://webnet.loc/rest/PktRecordLog/bulk_post/", json=data)
            base.add_pkt(test)

            base.compact_pktrecord()

    sniffer.sniffer.stop()
    test = sniffer.operations.copy()
    sniffer.operations.clear()
    base.add_pkt(test)
    print(f"final stat: {sniffer.COUNT} {len(sniffer.operations)}")
    total_time = sniffer.perf.delta(total=True)
    logger.msg_info(f"max speed pkt/sec: {sniffer.perf.max_speed_str()}")
    logger.msg_info(f"min speed pkt/sec: {sniffer.perf.min_speed_str()}")
    logger.msg_info(f"all pkt: {total_time.count}")
    logger.msg_info(f"total time: {total_time}")
    logger.msg_info(f"total speed: {total_time.speed_str()}")
except Exception as e:
    raise
    logger.msg_error(e)
