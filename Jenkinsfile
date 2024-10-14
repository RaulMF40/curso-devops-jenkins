pipeline {
    agent any
 
    environment {
        FLY_API_TOKEN = credentials('FLY_API_TOKEN')  
    }
 
    tools {
        nodejs "nodejs-18"
    }
 
    triggers {
        githubPush() 
    }
    
    stages {
        stage('Install Fly.io') {
            steps {
                echo 'Installing Fly.io...'
                script {
                    sh 'curl -L https://fly.io/install.sh | sh'
                    sh 'export FLYCTL_INSTALL="/var/jenkins_home/.fly"'
                    sh 'export PATH="$FLYCTL_INSTALL/bin:$PATH"'
                    sh "echo '${FLY_API_TOKEN}' | fly auth token"
                    sh 'fly version' 
                }
            }
        }
        
        stage('Install dependencies') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install' 
            }
        }
        
        stage('Run tests') {
            steps {
                echo 'Running tests...'
                sh 'npm run test' 
            }
        }
        
        stage('Deploy to Fly.io') {
            steps {
                echo 'Deploying the project to Fly.io...'
                sh '/var/jenkins_home/.fly/bin/flyctl deploy --app curso-devops-jenkins-crimson-wave-1177 --remote-only' 
            }
        }
    }
}

