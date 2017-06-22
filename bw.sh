#!/bin/bash

echo "TCP connection: Iperf BW Measurements output to file bandwidth.csv"
echo "Run this on server side: iperf -s"

echo -n "Enter server IP > "
read serverip
echo "You entered: $serverip"

i=0

for i in {1..50}
do var=$(iperf -c $serverip -f g |  awk '/Gbits\/sec/ {print $7}')
echo -e "$var"  >> bandwidth.csv; done

