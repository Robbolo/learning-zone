#!/bin/bash
# Run Postgres container
docker run -d \
  --name postgres-demo \
  -e POSTGRES_USER=rob \
  -e POSTGRES_PASSWORD=password \
  -e POSTGRES_DB=testdb \
  -v pgdata:/var/lib/postgresql \
  -p 5432:5432 \
  postgres:latest

echo "Postgres container 'postgres-demo' started."