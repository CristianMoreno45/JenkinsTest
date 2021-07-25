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
				sh 'sudo docker build -t testapp:2021.07.24.01-dev .'
				sh 'sudo docker tag testapp:2021.07.24.01-dev cmoreno45/jenkins:2021.07.24.01-dev'
                echo 'Login docker...'
				sh 'sudo docker login -u cmoreno45 -p fe55240c-ec5d-424e-9317-a48d91d7393c -S'
				sh 'sudo docker push cmoreno45/jenkins:2021.07.24.01-dev'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}