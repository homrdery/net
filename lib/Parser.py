from optparse import OptionParser


class Parser(OptionParser):
    def __int__(self):
        super().__init__(usage="usage: %prog [options] tag value filename(s)")
        # OptionParser.__init__(self,usage="usage: %prog [options] tag value filename(s)")
        self.options = None
        self.args = None


    @classmethod
    def init(cls):
        obj = Parser()
        obj.parse_args()
        return obj

    def parse_args(self):
        self.add_option("-c", action="store", dest="config_file", help="", default="../")
        self.add_option("-i", action="store", dest="interface", help="", default="enp4s0")
        self.add_option("-v", action="count", dest="verbose", help="verbose", default=1)
        self.add_option("-s", action="store_true", dest="search", help="search for ip/mac", default=True)
        self.add_option("-r", action="store_true", dest="respsearch", help="responce", default=False)
        self.add_option("-z", action="store_true", dest="select", help="", default=True)
        self.options, self.args = super().parse_args()

