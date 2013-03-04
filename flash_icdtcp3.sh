#!/bin/bash

echo "Checking cattus.info..."
image_cattus=`ssh ${CATTUS_USER}@cattus.info 'ls -1A /srv/jenkins/jobs/icdtcp3/lastSuccessful/archive/output/images/*.tar.bz2'`
image_cattus=`basename $image_cattus`

image_local=`ls -1A ${ICDTCP3_DIR}/buildroot/output/images/*.tar.bz2 2>/dev/null`
image_local=`basename "$image_local"`

image_old=`ls -1A ${ICDTCP3_DIR}/*.tar.bz2 2>/dev/null`
image_old=`basename "$image_old"`

echo "Select image:"

if [ "$image_cattus" != "" ]
then
  echo "[c] :: $image_cattus (cattus.info) [default]"
fi
if [ "$image_local" != "" ]
then
  echo "[l] :: $image_local (local workdir)"
fi
if [ "$image_old" != "" ]
then
  echo "[o] :: $image_old (last used)"
fi

echo
echo -n "Selected image [c/l/o]: "
read img

if [ "$image_old" != "" ] && [ "$img" != "o" ]
then
  mkdir -p ${ICDTCP3_DIR}/_old_img
  mv ${ICDTCP3_DIR}/*.tar.bz2 ${ICDTCP3_DIR}/_old_img/
fi

case "$img" in
  l)
    cp ${ICDTCP3_DIR}/buildroot/output/images/${image_local} ${ICDTCP3_DIR}/
    ;;
  o)
     #nothing to do
    ;;
  *)
    scp ${CATTUS_USER}@cattus.info:/srv/jenkins/jobs/icdtcp3/lastSuccessful/archive/output/images/${image_cattus} ${ICDTCP3_DIR}/
    ;;
esac

image=`ls -1A ${ICDTCP3_DIR}/*.tar.bz2 2>/dev/null`
image=`basename "$image"`

echo
echo "Used image: ${image}"
echo
echo -n "Switch module into programming mode and press enter:"
read x

echo "{scripts}/icdtcp3-flash.sh ${ICDTCP3_DIR}/${image}"
echo
${ICDTCP3_DIR}/scripts/icdtcp3-flash.sh ${ICDTCP3_DIR}/${image}




