pipeline {
    agent any
 
    stages {
        stage('Build') {
            steps {
                git 'https://github.com/team-zegotravel/app-sendmail.git'
                bat "npm install"
            }
        }
    }
}
