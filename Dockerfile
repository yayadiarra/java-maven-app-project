# Pull base image 
From tomcat:8-jre8 

# Maintainer 
EXPOSE 8080
LABEL maintainer="yannickparker84@gmail.com"
COPY /home/runner/work/java-maven-app/java-maven-app/yannick.jar /usr/local/tomcat/webapps
#CMD ["catalina.sh", "run"]
