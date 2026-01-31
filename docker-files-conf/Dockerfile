FROM eclipse-temurin:17-jre
WORKDIR /app

COPY target/pdfService-0.0.1-SNAPSHOT.jar /app/pdfService-0.0.1-SNAPSHOT.jar

EXPOSE 9090

ENTRYPOINT ["java","-jar","pdfService-0.0.1-SNAPSHOT.jar"]