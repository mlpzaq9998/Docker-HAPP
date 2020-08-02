#!/bin/sh
        
RES=`ps -ef | grep "ipes" | grep -v "grep" |  wc -l`
if [ $RES -lt 1 ];then
	sh /root/ipes/bin/check restart
	echo "ipes-start" >> /tmp/ipes-starts
fi
