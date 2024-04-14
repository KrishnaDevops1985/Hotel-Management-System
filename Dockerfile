# Use a base image with Java installed
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all the necessary files into the container
COPY . /app

# Compile the Java source files and create a JAR file
RUN javac *.java
RUN jar cfe app.jar Start *.class

# Set the default command to run the application
CMD ["java", "-jar", "app.jar"]
