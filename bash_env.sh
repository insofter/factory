#!/bin/bash

#icd
alias p="cd /home/insofter/projects; pwd"
alias b="cd /home/insofter/projects/buildroot; pwd"
alias s="cd /home/insofter/projects/scripts; pwd"
alias i="cd /home/insofter/projects/icd; pwd"
alias f="cd /home/insofter/projects/factory; pwd"
alias d="cd /home/insofter/projects/data; pwd"
alias ac="cd /home/insofter/projects/arm_icd_compilation; pwd; echo -ne '\033]0;ARM_ICD_COMPILATION\007'"
alias lc="cd /home/insofter/projects/local_icd_compilation; pwd; echo -ne '\033]0;LOCAL_ICD_COMPILATION\007'"
alias skel="cd /home/insofter/projects/buildroot/fs/skeleton-icdtcp3; pwd"
alias gall="/home/insofter/projects/factory/git_for_all.sh"

export EDITOR=/usr/bin/vim

export ICDTCP3_TFTP_DIR="/srv/tftp"
export ICDTCP3_SCRIPTS_DIR="/home/insofter/projects/scripts"
export ICDTCP3_GIT_ROOT="ssh://pmika@cattus.info/srv/git"
export ICDTCP3_SAM_BA_MODEM="/dev/ttyACM0"

export PATH="${PATH}:/home/insofter/projects/scripts"
#export PATH="${PATH}:/opt/sam-ba"
export PATH="${PATH}:/home/insofter/projects/factory/sam-ba"

export PATH="${PATH}:/home/insofter/projects/buildroot/output/host/usr/bin"
export PATH="${PATH}:/home/insofter/projects/buildroot/output/host/usr/sbin"

export PATH="${PATH}:/home/insofter/projects/local_icd_compilation/src"


export ICD_DATA_DB=/home/insofter/projects/data/data.db
export ICD_CONFIG_DB=/home/insofter/projects/data/config.db
export ICD_LIVE_DB=/home/insofter/projects/data/live.db

export ICD_SHARE_DIR=/home/insofter/projects/icd/share

sr() {
  if [ "$1" != "" ]
  then
    echo ssh root@192.168.$1
    ssh root@192.168.$1
  else
    echo ssh root@192.168.2.199
    ssh root@192.168.2.199
  fi
}

sa() {
  if [ "$1" != "" ]
  then
    echo ssh admin@192.168.$1
    ssh admin@192.168.$1
  else
    echo ssh admin@192.168.2.199
    ssh admin@192.168.2.199
  fi
}
