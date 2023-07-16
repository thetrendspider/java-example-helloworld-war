# Use a base image with a Java runtime environment
FROM openjdk:8-jdk-alpine

# Set the working directory within the container
WORKDIR /app

# Copy the WAR file into the container
COPY helloworld.war /app

# Expose the port that your web application listens on
#EXPOSE 8080

# Specify the command to run when the container starts
CMD ["java", "-jar", "helloworld.war"]
