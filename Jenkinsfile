pipeline {
    agent { dockerfile true }
    environment {
        HOME = '.'
    }
    stages {
        stage('Testing Teardown') {
            steps {
                echo 'Testing teardown'
                sh 'printenv'
            }
        }
    }
}