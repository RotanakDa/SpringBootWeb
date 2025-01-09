# Use a lightweight base image with Java
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the .jar file into the container
COPY coffee-shop-telegram-bot-0.0.1-SNAPSHOT.jar

# Expose the application port
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
