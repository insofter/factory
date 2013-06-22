#!/bin/bash

case  "$1" in 

  "--write0")
    #writing events to pipe

    sleep 1
    echo `date +%s` 0 1
    sleep 2
    echo `date +%s` 0 0
    sleep 2
    echo `date +%s` 0 1
    sleep 2
    echo `date +%s` 0 0
    sleep 100 #keep pipe alive
    
    ;;

  "--write1")

    sleep 1
    echo `date +%s` 0 1
    sleep 45
    echo `date +%s` 0 0
    sleep 100 #keep pipe alive
    
    ;;

  *)
    rm -rf /tmp/itd0
    mknod /tmp/itd0 p
    rm -rf /tmp/itd1
    mknod /tmp/itd1 p

    $0 --write0 >> /tmp/itd0 &
    $0 --write1 >> /tmp/itd1 &

    cd ${ICDTCP3_DIR}/local_icd_compilation
    src/icd-counters-daemon 
    ;;

esac

