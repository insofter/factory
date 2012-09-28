#!/bin/bash

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


su -c "cd /home/insofter/projects && git clone ssh://${cattus_user}@cattus.info/srv/git/buildroot" ${local_user}
su -c "cd /home/insofter/projects && git clone ssh://${cattus_user}@cattus.info/srv/git/icd" ${local_user}
su -c "cd /home/insofter/projects && git clone ssh://${cattus_user}@cattus.info/srv/git/scripts" ${local_user}
su -c "cd /home/insofter/projects && git clone ssh://${cattus_user}@cattus.info/srv/git/factory" ${local_user}

echo "Add 'source /home/insofter/projects/factory/bash_env.sh' to your .bashrc file."
echo DONE

