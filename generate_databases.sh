#!/bin/bash


${ICDTCP3_DIR}/local_icd_compilation/src/icd-sql --db=$ICD_CONFIG_DB ${ICDTCP3_DIR}/icd/share/create-schema-config.sql 

${ICDTCP3_DIR}/local_icd_compilation/src/icd-sql --db=$ICD_DATA_DB ../icd/share/create-schema-flow.sql 

${ICDTCP3_DIR}/local_icd_compilation/src/icd-sql --db=$ICD_LIVE_DB ../icd/share/create-schema-flow.sql 

${ICDTCP3_DIR}/local_icd_compilation/src/icd-sql --db=$ICD_CONFIG_DB ../icd/share/init-default-config.sql 

chmod 666 $ICD_CONFIG_DB
chmod 666 $ICD_DATA_DB
chmod 666 $ICD_LIVE_DB
