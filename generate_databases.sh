#!/bin/bash


/home/insofter/projects/local_icd_compilation/src/icd-sql --db=$ICD_CONFIG_DB /home/insofter/projects/icd/share/create-schema-config.sql 

/home/insofter/projects/local_icd_compilation/src/icd-sql --db=$ICD_DATA_DB ../icd/share/create-schema-flow.sql 

/home/insofter/projects/local_icd_compilation/src/icd-sql --db=$ICD_LIVE_DB ../icd/share/create-schema-flow.sql 

/home/insofter/projects/local_icd_compilation/src/icd-sql --db=$ICD_CONFIG_DB ../icd/share/init-default-config.sql 

chmod 666 $ICD_CONFIG_DB
chmod 666 $ICD_DATA_DB
chmod 666 $ICD_LIVE_DB
