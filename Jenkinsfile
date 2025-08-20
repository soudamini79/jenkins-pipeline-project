pipeline {

    agent any

    stages {
        stage ('checkout') {
            steps{
                //This is going to fetch code from the SCM
                checkout scm
            }
        }
        
        stage ('install dependencies') {
            steps {
                bat 'npm install'
            }
        }

        stage ('build') {
            steps {
                bat 'npm run build'
            }
        }

        stage ('Test'){
            steps {
                bat 'npm test'
            }
        }
        stage ('run'){
            steps {
                echo "The application is being started now"
                bat 'npm start && sleep 10'
                bat 'curl http://localhost:3000 || true'
            }
        }
  

    }

}
