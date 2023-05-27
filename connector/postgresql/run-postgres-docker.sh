#! /bin/bash

docker pull postgres:14.8

docker network create --gateway 172.24.0.1 --subnet 172.24.0.0/21 postgres

docker run --name postgres \
--network postgres \
--ip 172.24.0.101 \
-p 5432:5432 \
-e POSTGRES_PASSWORD=postgres -e TZ=Asia/Seoul \
-v /Users/yjkim-studio/postgresql/pgdata:/var/lib/postgresql/data \
-d postgres:14.8

docker network connect kind postgres
docker network connect postgres trino-control-plane
docker network connect postgres trino-worker
docker network connect postgres trino-worker2
docker network connect postgres trino-worker3