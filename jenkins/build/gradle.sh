#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

PROJ=/home/davidacevedo/repositories/elasticsearch-cicd/jenkins_home/workspace
PROJ2=/home/davidacevedo/repositories/elasticsearch-cicd/pipeline/pipeline/elasticsearch-cicd/jenkins_home/workspace
PROJ3=../../jenkins_home/workspace/
docker run --rm -v /root/.gradle:/root/.gradle -v $ROUTE/$JOB_NAME:/app -w /app gradle "$@"