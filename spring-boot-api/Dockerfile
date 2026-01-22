# before - in src/main/resources/application.properties change database url and credentials to match your environment
# docker build -t java-test .
# docker run --name test-java -p 8080:8080 java-test

FROM eclipse-temurin:25-jdk AS build

WORKDIR /app

COPY pom.xml .
COPY mvnw .
COPY .mvn .mvn
RUN chmod +x mvnw
RUN ./mvnw -B -q dependency:go-offline

COPY src src
RUN ./mvnw -B -q package -DskipTests


FROM eclipse-temurin:25-jre

USER 1001
WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]