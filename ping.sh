#!/bin/bash

echo "Ping Delay Measurement output to file: ping.csv"

echo -n "Enter IP to ping > "
read ip
echo "You entered: $ip"

i=0

#for i in {1..5}
#do
var=$(ping $ip -c 50 | awk 'BEGIN {FS="[=]|[ ]"} NR>=2&&NR<=51 {print $10/(2)}')
echo -e "$var"  >> ping.csv;


