from scapy.all import *
from scapy.layers.l2 import ARP
from RecordsType import WhoIs, WhoHas
from PerfCounter import Perf





class Sniffer:

    def __init__(self, logger, iface):

        self.perf = Perf()
        self.logger = logger
        self.iface = iface
        self.COUNT = 0
        self.operations = []
        self.sniffer = AsyncSniffer(prn=self.arp_display_who_has, filter="arp", store=False,
                                    iface=self.iface)
        self.sniffer.start()

    def arp_display_who_has(self, pkt):

        data = None
        if pkt[ARP].op == 1:
            data = WhoHas(data=pkt[ARP])
        if pkt[ARP].op == 2:
            data = WhoIs(data=pkt[ARP])

        if data:
            self.COUNT += 1
            self.operations.append(data)

        # # logger.msg_info(f"перехвачено пакетов: {COUNT}")
        #
        # data = None
        # if pkt[ARP].op == 1 and self.parser.options.search:  # who-has (request)
        #     data = WhoHas(data=pkt[ARP])
        # if pkt[ARP].op == 2 and self.parser.options.respsearch:  # is-at (response)
        #     data = WhoIs(data=pkt[ARP])
        #
        # if data:
        #     self.operations.append(self.base.get_table_record(data))
        #
        #     if len(self.operations) > 50:
        #         self.base.execute(*self.operations)
        #         self.operations.clear()
        #
                # cur_time = self.perf.delta(count=self.COUNT)
        #
        #         self.logger.msg_info(f"SPEED: {cur_time.speed_str()}")
        #         self.logger.msg_info(f"Time betw iter:{cur_time}")
        #         self.COUNT = 0
