#!/bin/bash

docker-compose up -d

echo "Connecting to elasticSearch..."
sleep 29

curl http://localhost:8888/index?docsPath=TestSample

sleep 14

expect=1
real=$(curl http://localhost:8888/search?query=performance | grep -o reinforcement_learning | grep -c reinforcement_learning)

echo $real

if [ "$expect" == "$real" ]
then
    echo "test pass"
    echo "             _ (o\-~-/o) _
            (o\ ( ಠ ಠ ) /o)
             \ \( (Y) )/ /
              \ )     ( /
              /       \ "

    docker-compose down

fi

docker-compose down
