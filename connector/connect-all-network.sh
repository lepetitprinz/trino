#! /bin/bash

# connect hive connector to trino
docker network connect kind hive-metastore
docker network connect kind mysql
docker network connect kind minio

# connect postgresql connector to trino
docker network connect kind postgres

# connect trino to postgresql
docker network connect postgres trino-control-plane
docker network connect postgres trino-worker
docker network connect postgres trino-worker2
docker network connect postgres trino-worker3