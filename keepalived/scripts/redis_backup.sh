#!/bin/bash

REDISCLI="/usr/bin/redis-cli"
LOGFILE="/var/log/keepalived-redis-state.log"

echo "[backup]" >> $LOGFILE
date >> $LOGFILE
echo "Being slave...." >> $LOGFILE 2>&1

sleep 15 #�ӳ�15������ݱ��Է�ͬ�����֮�����л����ӽ�ɫ
echo "Run SLAVEOF cmd ..." >> $LOGFILE
$REDISCLI SLAVEOF 192.168.136.129 6379 >> $LOGFILE  2>&1
