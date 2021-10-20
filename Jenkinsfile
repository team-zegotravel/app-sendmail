pipeline {
    agent any
 
    stages {
        stage('Build') {
            steps {
                git 'https://github.com/atthaboon/quick-example-of-testing-in-nodejs.git'
                bat "npm install"
            }
        }
        stage('Unit test') {
            steps {
                bat "npm test"
            }
            post {
                success {
                    junit '**/test-results.xml'
                }
            }
        }
    }
}
