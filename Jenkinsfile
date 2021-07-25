pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
				sh 'cd testapp \ mvn clean compile install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Docker') {
            steps {
                echo 'Login docker...'
				sh 'ls'
				sh 'sudo docker login -u cmoreno45 -p fe55240c-ec5d-424e-9317-a48d91d7393c'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}