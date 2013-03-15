#!/bin/bash

www_dir=/srv/http
img_path=http://192.168.2.200/aa.img
icd_user=admin
sudo=sudo #can be empty for root

cmdget="sudo wget $img_path -O /tmp/aa.img"
cmdupt='sudo icdtcp3-update-sw --type=ICDTCP3 /tmp/aa.img'


if [ "$1" != "" ]
then
  ssh="admin@192.168.$1"
else
  ssh="admin@192.168.2.199"
fi


echo "WWW dir: $www_dir"

echo Checking cattus.info...
image_cattus=`ssh ${CATTUS_USER}@cattus.info 'ls -1A /srv/jenkins/jobs/icdtcp3/lastSuccessful/archive/output/images/*.img'`
image_cattus=`basename $image_cattus`

echo Downloading from cattus...
scp ${CATTUS_USER}@cattus.info:/srv/jenkins/jobs/icdtcp3/lastSuccessful/archive/output/images/${image_cattus} ${www_dir}/aa.img

echo Downloading to icdtcp3...
ssh $ssh $cmdget
echo Updating...
ssh $ssh $cmdupt
echo DONE
