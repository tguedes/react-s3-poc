pipeline {
    agent {
        docker {
            image 'python:3.7-alpine'
        }
    }
    environment {
        HOME = '.'
    }
    stages {
        stage('Build') {
            steps {
                sh 'apk add --no-cache npm'
                sh 'npm install'
            }
        }
        stage('Deploy') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'ReactS3PoC-DeployAccessUser']]) {
                    sh 'pip install awscli'                
                    sh 'chmod 744 ./deploy.sh'
                    sh './deploy.sh'
                }
            }
        }
    }
}