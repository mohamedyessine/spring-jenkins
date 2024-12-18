pipeline {
    agent any
    environment {
    DOCKER_CREDS = credentials('465b0843-c743-4214-aba8-82ca0ab08a46')
    APP_NAME ="storemanagement"
    DOCKER_REPO_NAME= "${DOCKER_CREDS_USR}/${APP_NAME}"
    IMAGE_TAG= "${BUILD_ID}-${BRANCH_NAME}"
    IMAGE_NAME= "${DOCKER_REPO_NAME}:${IMAGE_TAG}"
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
        stage('Build and push docker image') {
            steps {
                powershell "docker build -t ${IMAGE_NAME} ."
                powershell "docker login -u ${DOCKER_CREDS_USR} -p ${DOCKER_CREDS_PSW}"
                powershell "docker push ${IMAGE_NAME}"
             
               }
            }

            stage('Deploy') {
                 steps {
                   powershell "docker compose up -d"
            }
           }


       
    }
    post{
        always{
            echo "The build ${BUILD_ID} has finished. Please visit ${BUILD_URL}"
        }
    }
}
