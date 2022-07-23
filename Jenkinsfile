pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                //git 'https://github.com/nicklef/PipelinePractice.git' 
                sh 'docker build -t nicklef/new .'
                sh 'apt install python3-pip'
                sh 'echo Building...'
            }
        }

        stage('Test') {

            steps {
                sh 'echo Testing'

                sh 'python3 -m pytest test.py'
            }
            
        }

        stage('Deploy') {

            steps {

                sh "echo Deploy to dockerhub"

            }

        }
    }
}