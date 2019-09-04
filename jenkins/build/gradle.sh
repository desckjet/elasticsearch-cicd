#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

PROJ=/home/davidacevedo/repositories/elasticsearch-cicd/jenkins_home/workspace/ramp_up
docker run --rm -v /root/.gradle:/root/.gradle -v $PROJ:/app -w /app gradle "$@"