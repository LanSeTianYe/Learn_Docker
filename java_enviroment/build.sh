#!/bin/bash
echo "build Dockerfile ... ..."
echo "curr path"
pwd

docker build --build-arg GIT_URL="https://github.com/LanSeTianYe/Blogger_Backstage.git" -t sunfeilong1993/java_server:0.0.1 . 
