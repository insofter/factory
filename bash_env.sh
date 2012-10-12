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


export ICD_DATA_DB=/home/insofter/projects/data/data.db
export ICD_CONFIG_DB=/home/insofter/projects/data/config.db
export ICD_LIVE_DB=/home/insofter/projects/data/live.db
