#!groovy
pipeline {
	agent none
stages {
stage('Maven Install') {
    	
      steps {
      	sh 'mvn clean install -DskipTests'
      }
    }
stage('Maven start') {
    	
      steps {
      	sh './mvnw package -DskipTests'
      }
    }
  }
}
