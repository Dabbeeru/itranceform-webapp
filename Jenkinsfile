#!/usr/bin/env bash
pipeline { 
    environment {
    registry = "dilleswari/dilleswari"
    registryCredential = 'dockerhub'
  } 
    agent {
        label 'master'
    }

    // Build stages:
    stages {

        stage('Install necessary modules') {
            steps {
                sh "mvn clean install"
            }
        }

        stage('Run Sonar Scanner') {
            steps {
                sh "mvn verify sonar:sonar"
            }
        }

        stage('Deploy the code to tomcat') {
            steps {
                sh "mvn tomcat7:redeploy"
            }
        }
        
      
    
         stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
 
    

    }
}
