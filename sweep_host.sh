#!/usr/bin/env bash

set -u

range=$1

for x in {1..254}; do
	ip=$range.$x; host $ip | grep "name pointer" | cut -d " " -f5
done
