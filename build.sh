#!/bin/bash
version="$(cat "./build.gradle.kts" | sed "s/=//g" | grep '^version' | awk '{printf $2}' | sed "s/\"//g")"
echo $version
gradle clean build -x test
docker build -t fengwenyi/erwin-eureka:$version .
docker tag fengwenyi/erwin-eureka:$version fengwenyi/erwin-eureka:$version
docker push fengwenyi/erwin-eureka:$version
git tag -a $version -m "v$version"
git push origin $version