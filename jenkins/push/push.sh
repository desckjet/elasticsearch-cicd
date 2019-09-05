#!/bin/bash

echo "########################"
echo "*** Preparing to push ***"
echo "########################"

REGISTRY="desckjet/ramp_up"
IMAGE="app"

echo "*** Logging in ***"
docker login -u desckjet -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY:$BUILD_TAG
echo "*** Pushing image ***"
docker push $REGISTRY:$BUILD_TAG