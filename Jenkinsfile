pipeline
{
  environment {
    registry = "areejashraf/sqlite-jenkins"
    registryCredential = 'dockerhub'
  }
 agent any
  stages
 {
    stage('Cloning Git')
    {
      steps {
        git 'https://github.com/Areej-Ashraf/Docker-Project.git'
      }
    }
    stage('Building image') {
      steps{
        script{
          def dockerHome = tool ‘docker’
          env.PATH = “${dockerHome}/bin:${env.PATH}”
        }
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage("deploy")
    {
      steps
      {
        echo 'deploying...'
      }
    }
  }
}
node
{
  //grovy script
}
