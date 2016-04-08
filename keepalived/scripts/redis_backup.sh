#!/bin/bash

REDISCLI="/usr/bin/redis-cli"
LOGFILE="/var/log/keepalived-redis-state.log"

echo "[backup]" >> $LOGFILE
date >> $LOGFILE
echo "Being slave...." >> $LOGFILE 2>&1

sleep 15 #延迟15秒待数据被对方同步完成之后再切换主从角色
echo "Run SLAVEOF cmd ..." >> $LOGFILE
$REDISCLI SLAVEOF 192.168.136.129 6379 >> $LOGFILE  2>&1
