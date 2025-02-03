# Base image with Java
FROM openjdk:17-jdk-slim

# Working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/my-app-1.0-SNAPSHOT.jar app.jar


# Command to run the JAR file
CMD ["java", "-jar", "app.jar"]
