pipeline {
    agent { label 'Dev-Agent'}
    stages {
        stage('Clone Code') {
            steps {
                echo 'Clonning the code from github repo...'
                git url: 'https://github.com/ashubambal/node-todo-cicd.git', branch: 'master'
            }
        }
        stage('Build and Test') {
            steps {
                echo 'Building and Testing the code...'
                sh 'docker build . -t softconsist/todo-app:latest'
            }
        }
        stage('Deploy Code') {
            steps {
                echo "Deploying the code..."
                withCredentials([usernamePassword(credentialsId: 'softconsist', passwordVariable: 'DOCKERHUB_PSW', usernameVariable: 'DOCKERHUB_USR')]) {
                    sh "docker login -u \$DOCKERHUB_USR -p \$DOCKERHUB_PSW"
                    sh "docker push softconsist/todo-app:latest"
                }
            }
        }
    }
}
