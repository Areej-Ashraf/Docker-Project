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
        git 'https://github.com/gustavoapolinario/microservices-node-example-todo-frontend.git'
      }
    }
    stage('Building image') {
      steps{
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
