# only for OpenShift deploy in course - don't use locally, 
# except situation when you know docker very well and know how to modify 
# application.properties from inside container

FROM eclipse-temurin:25-jre

USER 1001
WORKDIR /app

COPY api-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]