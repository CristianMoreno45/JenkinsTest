FROM openjdk:16-alpine3.13
WORKDIR /app 
#WIN
#COPY ./var/lib/jenkins/workspace/maven /src
#UBUNTU
COPY . /src