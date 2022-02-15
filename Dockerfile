# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "yannickparker84@gmail.com"
COPY --from=build ./target/*.jar /usr/local/tomcat/webapps