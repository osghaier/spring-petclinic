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
stage('test sonar') {
        steps {
      	sh 'mvn clean verify sonar:sonar \
  -Dsonar.projectKey=spring-petclinic \
  -Dsonar.projectName='spring-petclinic' \
  -Dsonar.host.url=http://192.168.202.130:9000 \
  -Dsonar.token=sqp_fdd79969ae0ffe1ffcf26f6fd0e1655df9f0b114'
              }
    }

  }
}
