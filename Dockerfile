#FROM node:16
FROM anapsix/alpine-java
COPY /target/spring-backend-0.0.1-SNAPSHOT.jar /tmp
WORKDIR /tmp
#RUN apt update && npm install && npm install -g @angular/cli && ng version | ng v
EXPOSE 8080
CMD ["java", "-jar", "spring-backend-0.0.1-SNAPSHOT.jar"]
