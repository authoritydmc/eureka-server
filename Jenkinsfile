pipeline {
  agent any
  tools {
    maven 'maven'
    jdk 'jdk17'
  }
  stages {
    stage ('Build') {
      steps {
       echo "Building using maven.."
       sh 'mvn clean package'

      }
    }
    stage ('Deploy') {
      steps {
        script {
         deploy adapters: [tomcat9(credentialsId: 'tomcatDeployer', path: '', url: 'http://localhost:8888/')], contextPath: null, onFailure: false, war: '**/*.war'
        }
      }
    }
  }
}