# Use official OpenJDK runtime as base image
FROM openjdk:17-jdk-slim AS build

# Install Maven
RUN apt-get update && apt-get install -y maven

# Copy project files into the container
COPY . .

# Run Maven build to package your application
RUN mvn clean package -DskipTests

# Copy the JAR file from the target folder into the container
COPY target/BookMyShow-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your application will run on (e.g., 8080)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]