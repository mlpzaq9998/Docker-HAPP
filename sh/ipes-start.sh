#!/bin/bash
        
if [ ! -f "/var/run/ipes.pid" ];then
	sh /root/ipes/bin/check restart
fi
