pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'YOUR_GITHUB_REPO_URL'
            }
        }

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