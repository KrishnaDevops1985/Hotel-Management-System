pipeline {
    agent any

    stages {
       stage('Checkout Source Code') {
            steps {
                // Checkout the source code from your Git repository
                git credentialsId: 'Github-Jenkins', url: 'https://github.com/KrishnaDevops1985/Hotel-Management-System.git', branch: 'master'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Define the Docker image tag
                    def dockerImageTag = "Krishna1234/java-webapp:latest"

                    // Build the Docker image using the Dockerfile
                    docker.build(dockerImageTag, '-f Dockerfile .')
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    // Define the Docker image tag
                    def dockerImageTag = "Krishna1234/java-webapp:latest"

                    // Push the Docker image to the Docker registry
                    docker.withRegistry('https://xxxxxxxxxx', 'xxxxxxxxxxxxxxxxx') {  # I dont have any docker  registry here I am giving it as example
                        docker.image(dockerImageTag).push()
                    }
                }
            }
        }
    }
}
