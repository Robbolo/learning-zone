#!/bin/bash
docker run --rm \
  -v "$(pwd)":/liquibase \
  liquibase/liquibase \
  --defaultsFile=liquibase.properties update \
  --changeLogFile=/liquibase/master-changelog.xml \
