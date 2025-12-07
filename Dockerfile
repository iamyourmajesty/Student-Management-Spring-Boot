FROM maven:3.8.5-openjdk-17 AS build
COPY . /build
WORKDIR /build
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /build/target/intro1-0.0.1-SNAPSHOT.jar /usr/local/lib/intro1.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/intro1.jar"]

