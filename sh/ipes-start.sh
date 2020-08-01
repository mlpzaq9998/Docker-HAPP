#!/bin/sh

cd /root/ipes/bin
./ipes start
sleep 3
./check restart
/bin/bash