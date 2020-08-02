#!/bin/bash
        
RES=`/var/run/ipes.pid`
if [ ! -f $RES ];then
	sh /root/ipes/bin/check restart
fi
