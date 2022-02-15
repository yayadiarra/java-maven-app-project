# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "yannickparker84@gmail.com"
COPY ./target/*.jar /usr/local/tomcat/webapps