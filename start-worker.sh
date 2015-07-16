#!/usr/bin/env bash
docker pull juanpedromoreno/docker-spark
docker run -d -t -P -v /Users/juanpedromoreno/ab/:/opt/conf -v /Users/juanpedromoreno/workspace/47deg/aurora-breeze/trunk/checkpoint:/usr/local/spark/checkpoint --link spark_master:spark_master juanpedromoreno/docker-spark /start-worker.sh "$@"
