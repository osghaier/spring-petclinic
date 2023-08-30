pipeline {
agent any

stages {

stage('Maven Install') {
      steps   {
      	sh 'mvn clean install -DskipTests'
              }
    }
stage('build projet') {
        steps {
      	sh './mvnw package -DskipTests'
              }
    }
stage('integration TEST'){
        steps {
         sh 'mvn verify -DskipUnitTests'
            }
        }
  }
}
