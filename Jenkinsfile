pipeline {
    agent { dockerfile true }
    environment {
        HOME = '.'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }
        stage('Deploy') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'ReactS3PoC-DeployAccessUser']]) {
                    sh '''
                        chmod 744 ./deploy.sh
                        ls -al
                        ls -al ./build
                        aws --version
                        ./deploy.sh
                    '''
                }
            }
        }
    }
}