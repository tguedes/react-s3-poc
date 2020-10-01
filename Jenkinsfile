pipeline {
    agent none
    environment {
        HOME = '.'
    }
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'node:12-alpine'
                }
            }
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }
        stage('Deploy') {
            agent {
                docker {
                    image 'amazon/aws-cli'
                }
            }
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'ReactS3PoC-DeployAccessUser']]) {
                    sh 'chmod 744 ./deploy.sh'
                    sh './deploy.sh'
                }
            }
        }
    }
}