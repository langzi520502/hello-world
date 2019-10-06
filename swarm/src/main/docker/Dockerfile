FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD swarm-0.0.1-SNAPSHOT.jar demo.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/swarm.jar"]