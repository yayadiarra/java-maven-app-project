# Pull base image 
From tomcat:8-jre8 

# Maintainer 
EXPOSE 8080
LABEL maintainer="yannickparker84@gmail.com"
COPY target/*.jar /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
