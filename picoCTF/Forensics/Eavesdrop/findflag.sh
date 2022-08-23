#!/bin/bash

tcpflow -r capture.flag.pcap

# file 3 contains salt
file3=$(ls | cut -d $'\n' -f3)
# file 4 contains command
file4=$(ls | cut -d $'\n' -f4)

# command from file 4 tcp stream
command=$(cat $file4 | cut -d $'\n' -f2 | cut -c 8-)

mv $file3 file.des3
$command

cat file.txt > flag.txt
cat flag.txt