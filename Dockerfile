# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "yannickparker84@gmail.com"
COPY /home/runner/work/java-maven-app/java-maven-app/target/*.jar /usr/local/tomcat/webapps