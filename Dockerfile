FROM openjdk:17-jdk-alpine
MAINTAINER Erwin Feng xfsy_2015@163.com
COPY build/libs/erwin-eureka-*.jar app.jar
ENTRYPOINT ["sh", "-c", "java -jar app.jar"]