#!/bin/bash

echo "Do you have tftp server with directory '/srv/tftp' ?"
echo "Do you have ip set to 192.168.123.70 ?"

if [ "$UID" != 0 ]
then
  echo "--ERR: Run as root!" ; exit 1
fi

echo -n "Type your local user name: "
read local_user

ans=`su -c "whoami" ${local_user}`

if ! [ "${ans}" = "${local_user}" ]
then
  echo "--ERR: Wrong local user!" ; exit 2
fi
echo "++OK: Local user correct."

echo "gpasswd -a ${local_user} uucp"
gpasswd -a ${local_user} uucp


echo "Type path to your work directory. Have to be full path. Leave empty to use \`/home/project_icdtcp3'"
echo -n "It will be created with your user's ownership: "
read icdtcp3_dir
if [ "${icdtcp3_dir}" = "" ] 
then
  icdtcp3_dir=/home/project_icdtcp3
fi

echo "mkdir -p ${icdtcp3_dir}" 
if ! mkdir -p ${icdtcp3_dir} 
then
  echo "-- ERR: Wrong path!" ; exit 4
fi
echo "chown ${local_user} ${icdtcp3_dir}"
chown ${local_user} ${icdtcp3_dir}

echo "mkdir -p /srv/tftp"
mkdir -p /srv/tftp
echo "chown -R ${local_user} /srv/tftp"
chown -R ${local_user} /srv/tftp

echo

echo "Add 'export ICDTCP3_DIR="${icdtcp3_dir}"' to your normal user .bashrc file."
echo "Remember to reload your shell!"

cat << HOW_TO_BEGIN_STAGE_II > ${icdtcp3_dir}/how_to_begin_stage_II.sh
#!/bin/bash
if [ "\$UID" = 0 ]
then
  echo "--ERR: Run as normal user!" ; exit 1
fi
if [ "\${ICDTCP3_DIR}" = "" ]
then
  echo "Brak zmiennej \\\`ICDTCP3_DIR' !" ; exit 3
fi

cd \${ICDTCP3_DIR}

if ! [ -d \${ICDTCP3_DIR}/buildroot ]
then
  git clone git@github.com:insofter/buildroot.git || exit 1
fi
if ! [ -d \${ICDTCP3_DIR}/icd ]
then
  git clone git@github.com:insofter/icd.git || exit 2
fi
if ! [ -d \${ICDTCP3_DIR}/scripts ]
then
  git clone git@github.com:insofter/scripts.git || exit 3
fi
if ! [ -d \${ICDTCP3_DIR}/factory ]
then
  git clone git@github.com:insofter/factory.git || exit 4
fi


if [ -d \${ICDTCP3_DIR}/icd ]
then
  mkdir -p \${ICDTCP3_DIR}/local_icd_compilation
  cd \${ICDTCP3_DIR}/local_icd_compilation 
  cmake ../icd/ -DCMAKE_CXX_FLAGS='-DDESKTOP' -DCMAKE_C_FLAGS='-DDESKTOP'
fi

if [ -d \${ICDTCP3_DIR}/icd ]
then
  mkdir -p \${ICDTCP3_DIR}/arm_icd_compilation
  cd \${ICDTCP3_DIR}/arm_icd_compilation 
  cp \${ICDTCP3_DIR}/factory/generate_icd_toolchainfile.sh \${ICDTCP3_DIR}/arm_icd_compilation/run_me_if_you_have_cross_compiler.sh 
  chmod +x \${ICDTCP3_DIR}/arm_icd_compilation/run_me_if_you_have_cross_compiler.sh
fi

if [ -d \${ICDTCP3_DIR}/factory ]
then
  mkdir -p \${ICDTCP3_DIR}/data
  chmod 777 \${ICDTCP3_DIR}/data #for apache etc
  cp \${ICDTCP3_DIR}/factory/generate_databases.sh \${ICDTCP3_DIR}/data/run_me_if_you_want_databases_and_have_compiled_local_icd.sh
  chmod +x \${ICDTCP3_DIR}/data/run_me_if_you_want_databases_and_have_compiled_local_icd.sh
fi


echo "Add 'source \${ICDTCP3_DIR}/factory/bash_env.sh' to your normal user .bashrc file."
echo "Read '\${ICDTCP3_DIR}/factory/INFO' file and install listed packages."
echo DONE
HOW_TO_BEGIN_STAGE_II

chmod +x ${icdtcp3_dir}/how_to_begin_stage_II.sh
echo "Next run ${icdtcp3_dir}/how_to_begin_stage_II.sh, as your user."
echo DONE

