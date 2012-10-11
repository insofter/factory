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


echo "mkdir -p /home/insofter/projects"
mkdir -p /home/insofter/projects

echo "gpasswd -a ${local_user} uucp"
gpasswd -a ${local_user} uucp

echo "chown -R ${local_user}:${local_user} /home/insofter"
chown -R ${local_user}:${local_user} /home/insofter

echo "chown -R ${local_user}:${local_user} /srv/tftp"
chown -R ${local_user}:${local_user} /srv/tftp


su -c "cd /home/insofter/projects && git clone ssh://${cattus_user}@cattus.info/srv/git/buildroot" ${local_user}
su -c "cd /home/insofter/projects && git clone ssh://${cattus_user}@cattus.info/srv/git/icd" ${local_user}
su -c "cd /home/insofter/projects && git clone ssh://${cattus_user}@cattus.info/srv/git/scripts" ${local_user}
su -c "cd /home/insofter/projects && git clone ssh://${cattus_user}@cattus.info/srv/git/factory" ${local_user}

su -c "mkdir /home/insofter/projects/local_icd_compilation" ${local_user}
su -c "cd /home/insofter/projects/local_icd_compilation && cmake ../icd/ -DCMAKE_CXX_FLAGS='-DDESKTOP' -DCMAKE_C_FLAGS='-DDESKTOP'" ${local_user}

su -c "mkdir /home/insofter/projects/arm_icd_compilation" ${local_user}
su -c "cd /home/insofter/projects/arm_icd_compilation && echo 'cmake ../icd/ -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_TOOLCHAIN_FILE=../icd/.toolchainfile.cmake' > run_me_if_you_have_cross_compiler.sh && chmod +x run_me_if_you_have_cross_compiler.sh" ${local_user}

su -c "mkdir /home/insofter/projects/data" ${local_user}
su -c "cp /home/insofter/projects/factory/generate_databases.sh /home/insofter/projects/data/run_me_if_you_want_databases_and_have_compiled_local_icd.sh" ${local_user}
su -c "chmod +x /home/insofter/projects/data/run_me_if_you_want_databases_and_have_compiled_local_icd.sh" ${local_user}


echo "Add 'source /home/insofter/projects/factory/bash_env.sh' to your .bashrc file."
echo "Read '/home/insofter/projects/factory/INFO' file."
echo DONE

