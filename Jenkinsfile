pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'bash tests.sh'
            }
        }
        stage('Build') {
            steps {
                echo 'Deploying....'
                sh 'bash build.sh'
            }
        }
        stage('Archive') {
            steps {
                echo 'Archiving....'
                archiveArtifacts artifacts: '**/builds/*.tar.gz', fingerprint: true
            }
        }
    }
}