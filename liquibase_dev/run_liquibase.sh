#!/bin/bash
docker run --rm \
  -v "$(pwd)":/liquibase-host \
  liquibase/liquibase \
  --changeLogFile=/liquibase/master-changelog.xml \
  --defaultsFile=liquibase.properties update \
  
