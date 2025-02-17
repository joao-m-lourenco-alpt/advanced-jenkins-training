# Base image with Java 17
FROM openjdk:17-jdk-slim

# workifir inside of container
WORKDIR /app

# Copy .jar file to container
COPY target/my-app-1.0-SNAPSHOT.jar app.jar

# Build .jar file
CMD ["java", "-jar", "app.jar"]
