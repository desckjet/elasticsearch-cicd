#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

PROJ=/home/davidacevedo/repositories/elasticsearch-cicd/jenkins_home/workspace
docker run --rm -v /root/.gradle:/root/.gradle -v $PROJ/$JOB_NAME:/app -w /app gradle "$@"