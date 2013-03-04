#!/bin/bash
cd ${ICDTCP3_DIR}/factory

scp project_docs/project_files/project_icdtcp3.mm \
  ${CATTUS_USER}@cattus.info:/srv/files/project_docs/project_files/project_icdtcp3.mm
#export whole document project (scheme of ICDTCP3)
