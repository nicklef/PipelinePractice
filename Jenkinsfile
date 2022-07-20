pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                //git 'https://github.com/nicklef/PipelinePractice.git'

                sh 'echo Building...'
            }
        }

        stage('Test') {

            steps {
                sh 'echo Testing'

                sh 'python3 test.py'
            }
            
        }
    }
}