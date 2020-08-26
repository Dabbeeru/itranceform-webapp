#!/usr/bin/env bash
pipeline { 
   environment {
    registry = "docker_hub_account/repository_name"
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
        
      
    
    stage ('building docker image'){

 
steps

 
{

 
echo "building the docker image "

 
sh 'docker build -t dilleswari/tomcat:2.0 .'

 
}

 
}

 
  
stage('Push the docker image to hub'){

 
steps

 
{

 
echo "login into docker hub "

 
withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'passwd', usernameVariable: 'username')])

 
{

 
sh 'docker login -u ${username} -p ${passwd}'

 
}

 
sh 'docker push dilleswari/tomcat:2.0'

 
}

 
}
 
    

    }
}
