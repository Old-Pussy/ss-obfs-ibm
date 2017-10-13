#!/bin/sh
nginx
ss-server -p $1 -k $2 -m $3 --plugin obfs-server --plugin-opts "obfs=tls;failover=127.0.0.1:443"
while [[ true ]]; do
	sleep 1
done
