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
   stage('initialize')
   {
     steps {
       script
        {
            def dockerHome = tool 'docker'
            env.PATH = "${dockerHome}/bin:${env.PATH}"
        } 
     }
   }
    stage('Building image') {
      steps{
        script {
            sh 'docker build -t myimage:lts .'
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
