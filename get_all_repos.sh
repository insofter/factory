#!/bin/bash

f=${ICDTCP3_DIR}/factory/materialy_pomocnicze/git_branch_branches_for_repos.txt

for x in $( cat ${f} | grep -v '#' | sed '/^$/d' ); do
  repo=$( echo $x | awk -F '--' '{print $1}' )
  branch=$( echo $x | awk -F '--' '{print $2}' )
  nc=$( echo $x | awk -F '--' '{print $3}' )


  echo -n "> ${repo} .. "

  cd ${ICDTCP3_DIR}
  if [ -d ${ICDTCP3_DIR}/${repo} ] || [ -d "${ICDTCP3_DIR}/${repo}.NC" ]; then
    echo exists
  else
    git clone git@github.com:insofter/${repo}.git || echo Error with clonning ${repo} || exit 1
    cd ${repo}
    git checkout ${branch}
    cd ..
    if [ "$nc" = "NC" ]; then
      mv ${ICDTCP3_DIR}/${repo} "${ICDTCP3_DIR}/${repo}.NC"
    fi
  fi

  echo

done
