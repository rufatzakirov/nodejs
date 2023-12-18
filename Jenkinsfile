pipeline {
  agent any
  stages {
    stage('test') {
      steps {
        git(url: 'https://github.com/rufatzakirov/nodejs', branch: 'main', poll: true)
      }
    }

    stage('build_image') {
      steps {
        sh 'docker build -t zakirovrufat/$JOB_NAME:$BUILD_ID .'
      }
    }

    stage('push_image') {
      environment {
        token = ''
      }
      steps {
        sh 'docker login -u zakirovrufat -p $token'
      }
    }

  }
}