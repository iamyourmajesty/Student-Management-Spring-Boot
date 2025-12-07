FROM maven:3.8.5-openjdk-17 AS build
COPY ..
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/intro1.jar /usr/local/lib/intro1.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/intro1.jar"]

