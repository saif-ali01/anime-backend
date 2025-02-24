# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/api-0.0.1-SNAPSHOT.jar app.jar
# Copy the JAR file from the target directory to the container
COPY target/api-0.0.1-SNAPSHOT.jar /app/api-0.0.1-SNAPSHOT.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/api-0.0.1-SNAPSHOT.jar"]
