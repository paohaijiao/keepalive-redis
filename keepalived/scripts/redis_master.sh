#!/bin/bash

REDISCLI="/usr/bin/redis-cli"
LOGFILE="/var/log/keepalived-redis-state.log"

echo "[master]" >> $LOGFILE
date >> $LOGFILE
echo "Being master...." >> $LOGFILE 2>&1

echo "Run SLAVEOF cmd ..." >> $LOGFILE
$REDISCLI SLAVEOF 192.168.136.129 6379 >> $LOGFILE  2>&1
sleep 10 #�ӳ�10���Ժ������ͬ����ɺ���ȡ��ͬ��״̬

echo "Run SLAVEOF NO ONE cmd ..." >> $LOGFILE
$REDISCLI SLAVEOF NO ONE >> $LOGFILE 2>&1
