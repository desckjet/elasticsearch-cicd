#!/bin/bash

# Copia el jar

echo "*******************************************************"
echo "$PWD"
echo "/////////////////////////////////////////////////////////"
cp -f ramp_up/build/libs/*.jar jenkins/build/  

echo "######################"
echo "*** Building image ***"
echo "######################"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache

