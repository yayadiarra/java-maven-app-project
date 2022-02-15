# Pull base image 
FROM anapsix/alpine-java 

# Maintainer 
EXPOSE 8080
LABEL maintainer="yannickparkerS@gmail.com"
COPY target/java-maven-app-1.1.0-SNAPSHOT.jar /maven/
CMD ["java", "-jar","/maven/java-maven-app-1.1.0-SNAPSHOT.jar"]
