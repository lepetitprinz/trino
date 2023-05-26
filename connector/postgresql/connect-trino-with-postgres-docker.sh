#! /bin/bash

docker pull postgres:14.8

docker run --name postgres \
--network postgres \
--ip 172.24.0.101 \
-p 5432:5432 \
-e POSTGRES_PASSWORD=postgres -e TZ=Asia/Seoul \
-v /Users/yjkim-studio/postgresql/pgdata:/var/lib/postgresql/data \
-d postgres:14.8

docker network connect kind postgres