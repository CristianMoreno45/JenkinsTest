pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
				sh 'mvn --file testapp/pom.xml clean compile install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Docker') {
            steps {
				sh 'ls'
				sh 'docker build -t testapp:2021.07.24.01-dev .'
				sh 'docker tag testapp:2021.07.24.01-dev cmoreno45/jenkins:2021.07.24.01-dev'
                echo 'Login docker...'
				sh 'docker login --username cmoreno45 --password-stdin < ./my_password'
				sh 'docker push cmoreno45/jenkins:2021.07.24.01-dev'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}