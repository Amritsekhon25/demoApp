FROM eclipse-temurin:17-jdk
LABEL maintainer="Amrit"

WORKDIR /tmp
VOLUME ["/tmp/log"]
COPY target/spring-boot-3-rest-api-example-0.0.1-SNAPSHOT.jar /tmp/spring-boot-3-rest-api-example-0.0.1-SNAPSHOT.jar
ENV _JAVA_OPTIONS="-XX:InitialRAMPercentage=25 -XX:MaxRAMPercentage=70"

ENTRYPOINT ["java", "-jar", "/tmp/spring-boot-3-rest-api-example-0.0.1-SNAPSHOT.jar"]
EXPOSE 9091
