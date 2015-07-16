#!/usr/bin/env bash
docker pull juanpedromoreno/docker-spark
docker run -i -t -P --link spark_master:spark_master juanpedromoreno/docker-spark /spark-shell.sh "$@"
