#! /bin/bash

# Create networks of each connector
docker network create --gateway 172.28.0.1 --subnet 172.28.0.0/16 hive-metastore
docker network create --gateway 172.24.0.1 --subnet 172.24.0.0/21 postgres

# Hive Metastore
cd hive-metastore
docker-compose build
docker-compose --project-name=hive-metastore up -d


# Postgresql
cd ../postgresql

docker pull postgres:14.8
docker run --name postgres \
--network postgres \
--ip 172.24.0.101 \
-p 5432:5432 \
-e POSTGRES_PASSWORD=postgres -e TZ=Asia/Seoul \
-v /Users/yjkim-studio/postgresql/pgdata:/var/lib/postgresql/data \
-d postgres:14.8