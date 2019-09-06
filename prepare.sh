#!/bin/bash

FILE=./jenkins_home

if [ ! -d "$FILE" ]; then
    mkdir jenkins_home
    chmod 777 jenkins_home
else
    echo "$FILE already exist"
fi