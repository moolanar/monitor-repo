FROM gradle:8.8-jdk17 AS build
WORKDIR /app
COPY build.gradle .
COPY src ./src
RUN gradle build --no-daemon

FROM openjdk:17 AS runtime
WORKDIR /app
COPY --from=build /app/build/libs/*.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
