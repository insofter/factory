#!/bin/bash

#icd
alias p="cd /home/insofter/projects; pwd"
alias b="cd /home/insofter/projects/buildroot; pwd"
alias s="cd /home/insofter/projects/scripts; pwd"
alias i="cd /home/insofter/projects/icd; pwd"

export EDITOR=/usr/bin/vim

export ICDTCP3_TARGET_IP="192.168.1.190"
export ICDTCP3_TFTP_DIR="/srv/tftp"
export ICDTCP3_WORKING_DIR="/home/insofter/work"
export ICDTCP3_BUILD_DIR="/home/insofter/work/_BUILD"
export ICDTCP3_SCRIPTS_DIR="/home/insofter/projects/scripts"
#export ICDTCP3_GIT_ROOT="/home/insofter/projects"
export ICDTCP3_GIT_ROOT="ssh://pmika@cattus.info/srv/git"
export ICDTCP3_SAM_BA_MODEM="/dev/ttyACM0"

export PATH="${PATH}:/home/insofter/work/scripts"
export PATH="${PATH}:/home/insofter/work/_BUILD/host/usr/bin"
export PATH="${PATH}:/home/insofter/work/_BUILD/host/usr/sbin"
export PATH="${PATH}:/home/insofter/projects/scripts"
export PATH="${PATH}:/opt/sam-ba"

export PATH="${PATH}:${HOME}/projects/host-tools/usr/bin"
export PATH="${PATH}:${HOME}/projects/host-tools/usr/sbin"

export PATH="${PATH}:/home/insofter/projects/buildroot/output/host/usr/bin"
export PATH="${PATH}:/home/insofter/projects/buildroot/output/host/usr/sbin"
