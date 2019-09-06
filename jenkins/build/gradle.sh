#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

PROJ=../jenkins_home/workspace
docker run --rm -v /root/.gradle:/root/.gradle -v $ROUTE/$JOB_NAME:/app -w /app gradle "$@"