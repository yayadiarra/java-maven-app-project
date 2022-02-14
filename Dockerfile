# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "yannickparker84@gmail.com"
COPY ./src/target/*.jar /usr/local/tomcat/webapps