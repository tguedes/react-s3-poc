pipeline {
    agent {
        docker {
            image 'node:12-alpine'
        }
    }
    environment {
        HOME = '.'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Deploy') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'ReactS3PoC-DeployAccessUser']]) {                    
                    sh 'chmod 744 ./deploy.sh'
                    sh './deploy.sh'
                }
            }
        }
    }
}