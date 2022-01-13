pipeline {
    environment {
    registry = "harshar21/adjustrepo"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
    agent any
    stages {
    stage('Cloning our Git') {
      steps {
        git credentialsId: 'Github', url: 'https://github.com/harshaettigi/adjust-task.git'
  }
 }
    stage('Building our image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy our image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
          dockerImage.push()
}
}
}
}
}
}
