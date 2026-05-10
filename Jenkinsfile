pipeline {
    agent any

    stages {

        stage('Install Dependencies') {
            steps {
                bat 'pip install -r requirements.txt'
            }
        }

        stage('Run Robot Tests') {
            steps {
                bat 'robot tests/'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '*.html, *.xml', fingerprint: true
        }
    }
}