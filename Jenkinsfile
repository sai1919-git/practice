pipeline {
    agent any
    environment {
        IMAGE_NAME = "sai604/mydocker"
    }
    stages{
        stage('checkout'){
            steps{
                git branch: 'main',url: "https://github.com/sai1919-git/practice'
            }
        }
        stage('build docker image'){
            steps{
                sh "docker build -t $IMAGE_NAME:latest ."
            }
        }
        stage('push to docker'){
            steps{
                withCredentials([usernamePassword(credentialsid: 'ee113df6-4efb-439e-a879-57dcd713dd00',usernamevariable: 'DOCKER_USER',passwordVariable: 'DOCKER_PASS')]){
                    sh """
                    echo %Docker_PASS% |
                    docker login -u %DOCKER_USER% --password-stdin
                    docker push %IMAGE_NAME%:latest
                    docker logout
                    """
                }
            }
        }
    }
}
