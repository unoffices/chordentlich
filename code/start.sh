#!/bin/bash
count=3
port_start=1337

killall python3
echo "Start some nodes...."
for (( p=0 ; p<$count; p++ )) # open 3 different chord nodes
do
	((port=$port_start + $p))

	gnome-terminal -x python3 dhtServer.py -p $port -c $count -s $port_start

done