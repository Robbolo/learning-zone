#!/bin/bash
docker run --rm \
  -v "$(pwd)":/liquibase-host \
  liquibase/liquibase \
  --changeLogFile=/liquibase-host/master-changelog.xml \
  --defaultsFile=liquibase-host.properties update 
  
