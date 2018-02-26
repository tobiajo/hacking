#!/usr/bin/env python

import socket,sys

target_ip=sys.argv[1]

for port in range(1,65535):
	s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
	res=s.connect_ex((target_ip,port))
	if res == 0:
		print("{}:OPEN".format(port))
	s.close()
