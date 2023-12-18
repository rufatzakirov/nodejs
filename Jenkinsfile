pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh 'docker build -t zakirovrufat/$JOB_NAME:$BUILD_NUMBER . '
            }
        }
        stage('push') {
            steps {
                withCredentials([string(credentialsId: 'token', variable: 'token')]) {
                    sh 'docker login -u zakirovrufat -p $token'
                    sh 'docker push zakirovrufat/$JOB_NAME:$BUILD_NUMBER'
                }
            }
        }
        stage('deploy') {
            steps {
                sh 'docker rm -f app'
                sh 'docker run -d --name app -p 80:3000 zakirovrufat/$JOB_NAME:$BUILD_NUMBER'
                }
        }
    }
}
