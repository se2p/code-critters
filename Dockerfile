FROM docker.io/library/eclipse-temurin:21-jdk

COPY mail mail
COPY target/Code-Critters-1.0.1.jar CCapp.jar
EXPOSE 8080
CMD ["java","-jar","/CCapp.jar"]
