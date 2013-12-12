#!/bin/bash

if [ 0`df ${ICDTCP3_DIR}/buildroot/ | tail -n 1 | awk '{print $4}'` -lt 4000000 ]
then
  echo "Error: not enough disk space"
  exit 3
fi


USTART=`date +%s`
DATE=`date +%Y.%m.%d__%H-%M-%S`

#tytuł terminala
echo -ne "\033]0;"Night ${DATE}"\007"

cd ${ICDTCP3_DIR}/buildroot
git checkout icdtcp3-2011.11



#log circulate
mkdir -p ${ICDTCP3_DIR}/_old/logi
mv ${ICDTCP3_DIR}/night_*.log ${ICDTCP3_DIR}/_old/logi


echo "    pwd: `pwd`" 2>&1 | tee -a ../night_${DATE}.all.log

#przenosimy stary output
if [ -e output ] 
then
  mkdir -p ${ICDTCP3_DIR}/_old/outputs
  if [ -e output/_about_me ]
  then
    ABOUT_ME=`cat output/_about_me`
    mv output ${ICDTCP3_DIR}/_old/outputs/${ABOUT_ME}
    echo "    "output __outputs/${ABOUT_ME} 2>&1 | tee -a ../night_${DATE}.all.log
  else
    mv output ${ICDTCP3_DIR}/_old/outputs/moved_at__${DATE}
    echo "    "output __outputs/moved_at__${DATE} 2>&1 | tee -a ../night_${DATE}.all.log
  fi
fi


mkdir output
echo -e ${DATE}__`git log --format=%s -1 | sed 's/ /_/g; s/[^a-zA-Z0-9_]//g; s/__/_/g'` \
  >> output/_about_me

#.config
if [ -e .config ] 
then 
  mv .config .config.old
fi

if [ "$1" = "prog" ]; then
  make icdtcp3_prog_defconfig
  echo "    make icdtcp3_prog_defconfig" | tee -a ../night_${DATE}.all.log
else
  make icdtcp3_defconfig
  echo "    make icdtcp3_defconfig" | tee -a ../night_${DATE}.all.log
fi


#kompilujemy całość do błedu z getsem
echo "    make_1 start: `date +%Y.%m.%d__%H-%M-%S`" 2>&1 | tee -a ../night_${DATE}.all.log
make 2>&1 | tee ../night_${DATE}.make_1.log

if [ ${PIPESTATUS[0]} -eq 0 ] #jesli 1 make nie poszło to próbujemy naprawic getsa i puszczamy jeszcze raz
then
  echo OK >> ../night_${DATE}.all.log 
  echo "    make_1 end: `date +%Y.%m.%d__%H-%M-%S`" 2>&1 | tee -a ../night_${DATE}.all.log

else

  echo ERR >> ../night_${DATE}.all.log
  echo "    make_1 end: `date +%Y.%m.%d__%H-%M-%S`" 2>&1 | tee -a ../night_${DATE}.all.log


  sudo -n beep -l 1000
  sleep 1

  #poprawiamy getsa (workaround)
  cat output/build/host-m4-1.4.15/lib/stdio.in.h | grep -v 'undef gets' \
    | grep -v 'gets is a security hole' > /tmp/${DATE}_stdio.h
  echo  "    cat output/build/host-m4-1.4.15/lib/stdio.in.h | grep -v 'undef gets' \
    | grep -v 'gets is a security hole' > /tmp/${DATE}_stdio.h" >> ../night_${DATE}.all.log
  mv /tmp/${DATE}_stdio.h output/build/host-m4-1.4.15/lib/stdio.in.h
  echo "    mv /tmp/${DATE}_stdio.h output/build/host-m4-1.4.15/lib/stdio.in.h" >> ../night_${DATE}.all.log

  sudo -n beep -l 1000


  #kompilujemy dalej
  echo "    make_2 start: `date +%Y.%m.%d__%H-%M-%S`" 2>&1 | tee -a ../night_${DATE}.all.log
  make 2>&1 | tee ../night_${DATE}.make_2.log ; test ${PIPESTATUS[0]} -eq 0 && echo OK \
    >> ../night_${DATE}.all.log || echo ERR >> ../night_${DATE}.all.log
  echo "    make_2 end: `date +%Y.%m.%d__%H-%M-%S`" 2>&1 | tee -a ../night_${DATE}.all.log

fi #koniec proby naprawiania



#budujemy pakiet
echo "    make_relpkg start: `date +%Y.%m.%d__%H-%M-%S`" 2>&1 | tee -a ../night_${DATE}.all.log
make relpkg 2>&1 | tee ../night_${DATE}.make_relpkg.log ; test ${PIPESTATUS[0]} -eq 0 \
  && echo OK :: DONE :: ${DATE} >> ../night_${DATE}.all.log || echo ERR >> ../night_${DATE}.all.log
echo "    make_relpkg end: `date +%Y.%m.%d__%H-%M-%S`" 2>&1 | tee -a ../night_${DATE}.all.log


echo -e "END\nstart: ${DATE}\nend: `date +%Y.%m.%d__%H-%M-%S`" 2>&1 | tee -a ../night_${DATE}.all.log
USTOP=`date +%s`
let "UDIF=$USTOP-$USTART"
let "HH=$UDIF/3600"
let "UDIF=$UDIF-($HH*3600)"
let "MM=$UDIF/60"
let "UDIF=$UDIF-($MM*60)"
let "SS=$UDIF"
echo "Time: ${HH}h ${MM}m ${SS}s" | tee -a ../night_${DATE}.all.log




echo -e "ls -lah output/images/\n`ls -lah output/images/`" | awk '{print "    " $0}' | tee -a ../night_${DATE}.all.log


#minilog
MINILOG="../icdtcp3_compilation_at_$( hostname ).log"

cp ../night_${DATE}.all.log $MINILOG

echo -e "\n\n======== make_1 ========\n\n" >>  $MINILOG
cat ../night_${DATE}.make_1.log | tail -30 | awk '{print "    " $0}' >>  $MINILOG

echo -e "\n\n======== make_2 ========\n\n" >>  $MINILOG
cat ../night_${DATE}.make_2.log | tail -30 | awk '{print "    " $0}' >> $MINILOG

echo -e "\n\n======== make_relpkg ========\n\n" >>  $MINILOG
cat ../night_${DATE}.make_relpkg.log | tail -30 | awk '{print "    " $0}' >> $MINILOG




if [ "$ICDTCP3_LOG_EXPORT_SERVER" != "" ]; then
  scp $MINILOG "${ICDTCP3_LOG_EXPORT_SERVER}:"
fi


sudo -n beep -l 1000
sleep 1
sudo -n beep -l 1000
sleep 1
sudo -n beep -l 1000
sleep 1
sudo -n beep -l 1000



sleep 30

echo -ne "\033]0;"Terminal"\007"

if [ -e /tmp/night-poweroff ]
then
  sudo -n shutdown -h now
  sudo -n systemctl poweroff
fi
