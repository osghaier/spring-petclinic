#!groovy
pipeline {
	agent none
stages {
stage('Maven Install') {
    	
      steps {
      	sh 'mvn clean install'
      }
    }
stage('Maven start') {
    	
      steps {
      	sh './mvnw package'
      }
    }
  }
}
