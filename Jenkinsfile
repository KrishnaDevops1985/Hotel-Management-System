pipeline {
    agent any

    stages {
        stage('Deploy Kubernetes manifests') {
            steps {
                script {
                    ansiblePlaybook(
                        playbook: 'deploy.yaml',
                        inventory: 'localhost',
                        extras: "-e 'ansible_python_interpreter=/usr/bin/python3'"
                    )
                }
            }
        }
    }
}
