pipeline {

    agent any

    stages {
        stage ('checkout') {
            steps{
                //This is going to fetch code from the SCM
                git url: 'https://github.com/soudamini79/jenkins-pipeline-project.git', branch: 'main'
            }
        }
        stage ('Docker build Image') {
            steps{
                docker.build("jenkins-pipeline-project:${env.BUILD_ID}")
            }
        } 
        stage ('Docker run') {
            steps{
                docker.image("jenkins-pipeline-project:${env.BUILD_ID}").run("-p 3000:3000")
            }
        } 

    }

}
