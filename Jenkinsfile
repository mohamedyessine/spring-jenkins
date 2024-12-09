pipeline {
    agent any
    stages {
        stage('Build jar') {
            steps {
                powershell 'mvn clean package'
            }
        }
        stage('Display build data') {
            steps {
                bat 'set'
            }
        }
        stage('Build docker image') {
            steps {
                powershell "docker build -t storemanagement:${BUILD_ID} ."
               }
            }
    }
    post{
        always{
            echo "The build ${BUILD_ID} has finished. Please visit ${BUILD_URL}"
        }
    }
}
