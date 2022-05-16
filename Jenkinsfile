pipeline {
    agent any

    stages {
        stage('Cleaning Environment') {
            steps {
                sh '''
                docker rm -f $(docker ps -aq)  || true
                
                '''
            }
        }

        stage('Building Image') {
            steps {
                sh '''
                docker build  -t  login001 .
                '''
            }
        }

        stage('Checking the images ') {
            steps {
                sh '''
                docker images
                '''
            }
        }

        stage('Contenarize the application') {
            steps {
                sh '''
                docker run -i --name alfred-jenkins -P login001
                '''
            }
        }

        stage('Checking Containers') {
            steps {
                sh '''
                docker ps
                '''
            }
        }










    }













}
