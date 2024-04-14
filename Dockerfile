# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the compiled classes and resources into the container
COPY . /usr/src/app

# Set the classpath to the directory containing your compiled classes
ENV CLASSPATH=/usr/src/app

# Define the command to run your application
CMD ["java", "src/project/ConnectionProvider.java"]
