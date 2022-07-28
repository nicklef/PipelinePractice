pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                
                sh 'echo Building...'
                sh 'docker build -t nicklef/new .'
                sh 'pip install pytest'
                
            }
        }

        stage('Test') {

            steps {
                sh 'echo Testing'

                sh 'python3 -m pytest test.py'
            }
            
        }

        stage('SonarQube analysis') {
            def scannerHome = tool 'SonarScanner 4.0';
            withSonarQubeEnv('My SonarQube Server') {
                sh '${scannerHome}/bin/sonar-scanner'
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