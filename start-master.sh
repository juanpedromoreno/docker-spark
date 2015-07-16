#!/usr/bin/env bash
docker pull juanpedromoreno/docker-spark
docker run -d -t -p 7077:7077 -p 8080:8080 -P --name spark_master -v /Users/juanpedromoreno/ab/:/opt/conf -v /Users/juanpedromoreno/workspace/47deg/aurora-breeze/trunk/checkpoint:/usr/local/spark/checkpoint juanpedromoreno/docker-spark /start-master.sh "$@"
