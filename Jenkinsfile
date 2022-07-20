pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                git 'https://github.com/nicklef/PipelinePractice.git'

                sh 'echo Building...'
            }
        }

        stage('Test') {
            sh 'echo Testing'
        }
    }
}