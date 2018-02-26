#!/usr/bin/env bash

set -u

range=$1

for x in {1..254}; do
	ip=$range.$x; ping -c 1 $ip | grep "64 b" | cut -d " " -f4
done
