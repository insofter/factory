#!/bin/bash

if [ "$1" = "--write" ]; then #writing events to pipe
  
  sleep 1
  echo `date +%s` 0 1
  sleep 1
  echo `date +%s` 0 0
  sleep 1
  echo `date +%s` 0 1
  sleep 10
  echo `date +%s` 0 0


  sleep 100 #keep pipe alive
else #run test

  rm -rf /tmp/itd
  mknod /tmp/itd p

  $0 --write >> /tmp/itd &
  cd ${ICDTCP3_DIR}/local_icd_compilation
  src/icd-counters-daemon 

fi
