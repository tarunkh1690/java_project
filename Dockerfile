FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
ADD /var/lib/jenkins/workspace/maven_docker_project/target/gs-spring-boot-docker-0.1.0.jar ~/app.jar
EXPOSE 9090
ENTRYPOINT ["java","-jar","~/app.jar" -Dserver.port=9090]
