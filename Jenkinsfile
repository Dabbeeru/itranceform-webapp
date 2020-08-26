#!/usr/bin/env bash
pipeline {
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
        
      
    stages {
        stage('Build Docker Image') {
            steps {
                deleteDir()
                checkout scm
                sh 'make build'
            }
        }
    }

    }
}
