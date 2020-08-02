#!/bin/sh

cp /sh/ipes-start.sh /ipes-start.sh
cd /root
tar zxf ipes-linux-amd64-e9d66fc6-bit.tar.gz
mkdir -p /root/ipes/var/db/ipes/happ-conf
echo "args:" > /root/ipes/var/db/ipes/happ-conf/custom.yml
sed -i "\$a\  - '/data'" /root/ipes/var/db/ipes/happ-conf/custom.yml
rm /root/ipes-linux-amd64-e9d66fc6-bit.tar.gz

