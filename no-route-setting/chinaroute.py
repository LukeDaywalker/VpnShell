# -*- coding: utf-8 -*-

import os,re,netaddr
from netaddr import *
from io import open

cnlines = [line.rstrip('\n') for line in open('cnroute.txt')]
cnsummary = netaddr.cidr_merge(sorted(cnlines))
cnroute_merged = open("cnroute_merged.txt", "w", encoding='utf-8')
cnroute_merged.write('\n'.join([ unicode(x) for x in cnsummary ]))
cnroute_merged.close()
