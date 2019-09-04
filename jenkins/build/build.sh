#!/bin/bash

# Copia el jar

cp -f build/libs/*.jar jenkins/build/  
cp -f build/libs/*.jar integration_test/

echo "######################"
echo "*** Building image ***"
echo "######################"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
cd integration_test/ && docker-compose build

