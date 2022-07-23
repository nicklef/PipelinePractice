pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                //git 'https://github.com/nicklef/PipelinePractice.git' 
                sh 'docker build -t nicklef/new .'
                sh 'pip install pytest'
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

                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'password', usernameVariable: 'username')]) {
                    sh 'docker login -u ${username} -p ${password}'
                }

                sh 'docker push nicklef/new:latest'

            }

        }
    }
}