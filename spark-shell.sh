#!/usr/bin/env bash
docker pull juanpedromoreno/docker-spark:2.11_1.4.1
docker run -i -t -P --link spark_master:spark_master juanpedromoreno/docker-spark:2.11_1.4.1 /spark-shell.sh "$@"
