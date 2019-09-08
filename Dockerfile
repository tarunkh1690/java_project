FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
RUN echo ${JAR_FILE}
ADD ${JAR_FILE} /tmp/app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "/tmp/app.jar", "-Dserver.port=9090"]
