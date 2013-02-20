#!/bin/sh

mkdir -p /home/data
F=/home/data/gsm.log


while [ 1 == 1 ]
do
  echo -n "++" >> $F
  date >> $F

  ping -c 1 www.onet.pl >> $F
  ping -c 1 www.google.pl >> $F

  cp /tmp/log/icd-gsm-daemon.log /home/data/gsm_daemon.log

  sleep 10m
done
