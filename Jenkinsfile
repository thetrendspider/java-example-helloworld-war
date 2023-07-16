pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from Git
                // Replace <repository-url> with your Git repository URL
                git branch: 'master', url: 'https://github.com/thetrendspider/java-example-helloworld-war.git'
            }
        }/* 
       
        stage('Build') {
            steps {
                // Build your project
                // Example: Maven build
                sh 'mvn clean install'
            }
        }
        
        stage('Test') {
            steps {
                // Run your tests
                // Example: Maven test
                sh 'mvn test'
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy your project
                // Example: Copy artifacts to a remote server
                // Replace <remote-server> with your deployment target
                sh 'scp target/my-app.jar <remote-server>:~/deploy/'
            }
        } */
    }
}
