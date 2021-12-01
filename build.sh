#!/bin/bash
version=1.0.0
gradle clean build -x test
docker build -t fengwenyi/erwin-eureka:$version .
docker tag fengwenyi/erwin-eureka:$version fengwenyi/erwin-eureka:$version
docker push fengwenyi/erwin-eureka:$version
git tag -a $version -m "v$version"
git push origin $version