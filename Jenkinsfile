pipeline {
    agent any

    stages {
        stage('Cleaning Environment') {
            steps {
                sh '''
                docker rm -f $(docker ps -aq)
                
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

        stage('docker run -i --name alfred-jenkins -P login001') {
            steps {
                sh '''
                lsblk
                '''
            }
        }

        stage('Hello5') {
            steps {
                sh '''
                pwd
                '''
            }
        }










    }













}
