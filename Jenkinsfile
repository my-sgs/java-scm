pipeline {
    agent any

    stages {
        stage('Checkout from Git-SCM') {
            steps {
            git 'https://github.com/my-sgs/java-scm.git'
            }
        }
        stage('Mvn Clean and Install') {
            steps {
            sh 'mvn clean install'
            }
        }
    }
}
