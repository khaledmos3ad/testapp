#!/usr/bin/env groovy

pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'docker build -t testapp_image .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('undeploy') {
            steps {
                echo 'running...'
                sh 'docker rm -f testapp_container
            }
        }
        stage('deploy') {
            steps {
                echo 'running...'
                sh 'docker run --name testapp_container -d -p 60600:8000 testapp_image'
            }
        }
    }
}
