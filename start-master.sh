#!/usr/bin/env bash
docker pull juanpedromoreno/docker-spark:2.11_1.4.1
docker run -d -t -p 7077:7077 -p 8080:8080 -P --name spark_master juanpedromoreno/docker-spark:2.11_1.4.1 /start-master.sh "$@"
