#!/bin/bash

if [ "${ICDTCP3_DIR}" = "" ]
then
  echo "Brak zmiennej \`ICDTCP3_DIR' !"
  export ICDTCP3_DIR=/home/project_icdtcp3
  echo 'export ICDTCP3_DIR=/home/project_icdtcp3'
fi

#icd
alias p="cd ${ICDTCP3_DIR}; pwd"
alias b="cd ${ICDTCP3_DIR}/buildroot; pwd"
alias s="cd ${ICDTCP3_DIR}/scripts; pwd"
alias i="cd ${ICDTCP3_DIR}/icd; pwd"
alias f="cd ${ICDTCP3_DIR}/factory; pwd"
alias d="cd ${ICDTCP3_DIR}/data; pwd"
alias ac="cd ${ICDTCP3_DIR}/arm_icd_compilation; pwd; echo -ne '\033]0;ARM_ICD_COMPILATION\007'"
alias lc="cd ${ICDTCP3_DIR}/local_icd_compilation; pwd; echo -ne '\033]0;LOCAL_ICD_COMPILATION\007'"
alias skel="cd ${ICDTCP3_DIR}/buildroot/fs/skeleton-icdtcp3; pwd"
alias gall="${ICDTCP3_DIR}/factory/git_for_all.sh"

if [ "${EDITOR}" = "" ]
then
  export EDITOR=/usr/bin/vim
fi

export ICDTCP3_TFTP_DIR="/srv/tftp"
export ICDTCP3_SCRIPTS_DIR="${ICDTCP3_DIR}/scripts"

export ICDTCP3_GIT_ROOT="git@github.com:insofter"

export ICDTCP3_SAM_BA_MODEM="/dev/ttyACM0"

export PATH="${PATH}:${ICDTCP3_DIR}/scripts"
export PATH="${PATH}:${ICDTCP3_DIR}/factory/sam-ba"

export PATH="${PATH}:${ICDTCP3_DIR}/buildroot/output/host/usr/bin"
export PATH="${PATH}:${ICDTCP3_DIR}/buildroot/output/host/usr/sbin"

export PATH="${PATH}:${ICDTCP3_DIR}/local_icd_compilation/src"

# equivalent of /etc/profile.d/icd.sh
export ICD_DATA_DB=${ICDTCP3_DIR}/data/data.db
export ICD_CONFIG_DB=${ICDTCP3_DIR}/data/config.db
export ICD_LIVE_DB=${ICDTCP3_DIR}/data/live.db
export ICD_SHARE_DIR=${ICDTCP3_DIR}/icd/share

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

