#!/bin/sh

PNAME='ipes'        
RES=`ps -ef | grep "$PNAME" | grep -v "grep" |  wc -l`
if [ $RES -lt 1 ]
then
        cd /root/ipes/bin
        ./check restart
fi
