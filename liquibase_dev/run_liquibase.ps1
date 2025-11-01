docker run --rm -v "D:\Coding\Repos\learning-zone\liquibase_dev:/liquibase-host" `
  liquibase/liquibase `
  --changeLogFile=/liquibase-host/master-changelog.xml `
  --defaultsFile=/liquibase-host/liquibase.properties update
