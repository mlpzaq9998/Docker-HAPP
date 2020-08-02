#!/bin/bash
        
if [ ! -f "/var/run/ipes.pid" ];then
	sh /root/ipes/bin/check restart
	sed -i '/ipes-start.sh/d' /var/spool/cron/root
fi
