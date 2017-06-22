#!/bin/bash

echo "UDP connection: Iperf Jitter Measurements output to file: jitter.csv"
echo "Run this on server side: iperf -s -u"

echo -n "Enter server IP > "
read serverip
echo "You entered: $serverip"

i=0

for i in {1..50}
do var=$(iperf -c $serverip -u -b 1000m |  awk '/ms/ {print $9}' | awk '!/^$/')
echo -e "$var"  >> jitter.csv; done


