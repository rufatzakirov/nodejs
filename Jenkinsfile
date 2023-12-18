pipeline {
  agent any
  stages {
    stage('test') {
      steps {
        git(url: 'https://github.com/rufatzakirov/nodejs', branch: 'main', poll: true)
      }
    }

  }
}