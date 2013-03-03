#!/bin/bash

echo "Do you have tftp server with directory '/srv/tftp' ?"
echo "Do you have ip set to 192.168.2.200 ?"

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



echo -n "Type cattus.info user name: "
read cattus_user

ans=`ssh ${cattus_user}@cattus.info "whoami"`

if ! [ "${ans}" = "${cattus_user}" ]
then
  echo "--ERR: Wrong cattus user!" ; exit 3
fi
echo "++OK: Cattus user correct."

echo "gpasswd -a ${local_user} uucp"
gpasswd -a ${local_user} uucp


echo "mkdir -p /home/insofter"
mkdir -p /home/insofter
echo "chown ${local_user} /home/insofter"
chown ${local_user} /home/insofter

echo "mkdir -p /srv/tftp"
mkdir -p /srv/tftp
echo "chown -R ${local_user} /srv/tftp"
chown -R ${local_user} /srv/tftp

echo

echo "Add 'export CATTUS_USER="${cattus_user}"' to your normal user .bashrc file."

cat << HOW_TO_BEGIN_STAGE_II > /home/insofter/how_to_begin_stage_II.sh
#!/bin/bash
if [ "\$UID" = 0 ]
then
  echo "--ERR: Run as normal user!" ; exit 1
fi

mkdir -p /home/insofter/projects
cd /home/insofter/projects

if ! [ -d /home/insofter/projects/buildroot ]
then
  git clone ssh://\${CATTUS_USER}@cattus.info/srv/git/buildroot || exit 1
fi
if ! [ -d /home/insofter/projects/icd ]
then
  git clone ssh://\${CATTUS_USER}@cattus.info/srv/git/icd || exit 2
fi
if ! [ -d /home/insofter/projects/scripts ]
then
  git clone ssh://\${CATTUS_USER}@cattus.info/srv/git/scripts || exit 3
fi
if ! [ -d /home/insofter/projects/factory ]
then
  git clone ssh://\${CATTUS_USER}@cattus.info/srv/git/factory || exit 4
fi


if [ -d /home/insofter/projects/icd ]
then
  mkdir -p /home/insofter/projects/local_icd_compilation
  cd /home/insofter/projects/local_icd_compilation 
  cmake ../icd/ -DCMAKE_CXX_FLAGS='-DDESKTOP' -DCMAKE_C_FLAGS='-DDESKTOP'
fi

if [ -d /home/insofter/projects/icd ]
then
  mkdir -p /home/insofter/projects/arm_icd_compilation
  cd /home/insofter/projects/arm_icd_compilation 
  echo 'cmake ../icd/ -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_TOOLCHAIN_FILE=../icd/.toolchainfile.cmake' > run_me_if_you_have_cross_compiler.sh
  chmod +x run_me_if_you_have_cross_compiler.sh
fi

if [ -d /home/insofter/projects/factory ]
then
  mkdir -p /home/insofter/projects/data
  chmod 777 /home/insofter/projects/data #for apache etc
  cp /home/insofter/projects/factory/generate_databases.sh /home/insofter/projects/data/run_me_if_you_want_databases_and_have_compiled_local_icd.sh
  chmod +x /home/insofter/projects/data/run_me_if_you_want_databases_and_have_compiled_local_icd.sh
fi


echo "Add 'source /home/insofter/projects/factory/bash_env.sh' to your normal user .bashrc file."
echo "It's needed after export CATTUS_USER=\${CATTUS_USER}"

echo "Read '/home/insofter/projects/factory/INFO' file and install listed packages."
echo DONE
HOW_TO_BEGIN_STAGE_II

chmod +x /home/insofter/how_to_begin_stage_II.sh
echo "Next run /home/insofter/how_to_begin_stage_II.sh, as your user."
echo DONE

