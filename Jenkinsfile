pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building war file..'
				sh 'mvn --file testapp/pom.xml clean compile install'
				echo 'Done!'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
				sh 'mvn --file testapp/pom.xml sonar:sonar -Dsonar.projectKey=JavaTest -Dsonar.host.url=http://18.119.131.174:9000 -Dsonar.login=c5c4baca044910f53f6467e8a2b94c603b1cc5dc'
				echo 'Done!'
            }
        }
        stage('Docker') {
            steps {
				echo 'Building docker image!'
				sh 'docker build -t testapp:2021.07.24.01-dev .'
				sh 'docker tag testapp:2021.07.24.01-dev cmoreno45/jenkins:2021.07.24.01-dev'
                echo 'Login docker...'
				sh 'docker login --username cmoreno45 --password-stdin < ./my_password'
				echo 'Push docker image...'
				sh 'docker push cmoreno45/jenkins:2021.07.24.01-dev'
				echo 'Done!'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
				echo 'TODO: it is a process to deployment'
				echo 'Done!'
            }
        }
    }
}