pipeline {
    agent any
    environment {
    DOCKER_CREDS = credentials('465b0843-c743-4214-aba8-82ca0ab08a46')
}
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
