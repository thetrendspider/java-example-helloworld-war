pipeline {
    agent any

    environment {
    GCP_PROJECT = "arched-sorter-347511"
    GCR_REGISTRY = "gcr.io/$GCP_PROJECT"
    DOCKER_IMAGE = "$GCR_REGISTRY/my-image:${env.BUILD_ID}"
  } 
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from Git
                // Replace <repository-url> with your Git repository URL
                git branch: 'master', url: 'https://github.com/thetrendspider/java-example-helloworld-war.git'
            }
        }
       
        stage('docker build') {
            steps {
                script {
                    docker.build("$DOCKER_IMAGE", "-f Dockerfile .")

                    docker.withRegistry("https://gcr.io", "gcr-auth") {
                      dockerImage.push()
                    }

                }
            }
        }
        
        /* stage('Test') {
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
