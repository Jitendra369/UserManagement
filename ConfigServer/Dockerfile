FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/ConfigServer-0.0.1-SNAPSHOT.jar /app/ConfigServer-0.0.1-SNAPSHOT.jar
EXPOSE 8853
ENTRYPOINT ["java", "-jar", "ConfigServer-0.0.1-SNAPSHOT.jar"]