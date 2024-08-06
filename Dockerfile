FROM openjdk:17-jdk-alpine
EXPOSE 8080
ARG APP_NAME="demo-0.0.1-SNAPSHOT"
ARG JAR_FILE=${APP_NAME}.jar
COPY  build/${JAR_FILE} app.jar  
ENTRYPOINT ["java","-jar","app.jar"]
