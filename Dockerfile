FROM openjdk:11-jre
COPY spring_boot_ci_cd-0.0.1.jar /app/spring_boot_ci_cd-0.0.1.jar
WORKDIR /app
CMD ["java", "-jar", "spring_boot_ci_cd-0.0.1.jar"]
