pipeline {
  agent any
  stages {
    stage('test') {
      steps {
        git(url: 'https://github.com/rufatzakirov/nodejs', branch: 'main', poll: true)
      }
    }

    stage('') {
      steps {
        sh 'docker build -t zakirovrufat/$JOB_NAME:$BUILD_ID'
      }
    }

  }
}