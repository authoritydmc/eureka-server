# Use a base image with JDK installed (openjdk is a popular choice)
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the host machine to the container
COPY target/eureka-server.jar /app/eureka-server.jar

# Expose the port on which your application will run
EXPOSE 8761

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/eureka-server.jar"]
