# Pull base image 
FROM tomcat:8-jre8 

# Maintainer 
EXPOSE 8080
LABEL maintainer="yannickparker84@gmail.com"
COPY target/*jar /usr/local/tomcat/webapps
CMD ["java", "-jar","/usr/local/tomcat/webapps/*jar"]
