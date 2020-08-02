#!/bin/sh

cd /root/ipes/bin
/bin/bash -c check restart
tail -f /dev/null
