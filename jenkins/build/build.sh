#!/bin/bash

# Copia el jar

echo "$PWD"
cp -f elasticsearch-cicd/build/libs/*.jar jenkins/build/  

echo "######################"
echo "*** Building image ***"
echo "######################"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache

