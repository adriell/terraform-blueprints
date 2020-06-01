#!/bin/bash

#Update instance
yum update -y

#install dependencies
yum install -y python python-devel python-pip docker 

pip install docker-py

#Start docker
service docker start

#Enable Docker start
chkconfig docker on

#Run Application
docker run -d --name cloudops --restart always -p 80:8080 adriell/cloudops-app:latest