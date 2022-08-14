pipeline
{
  environment {
    registry = "areejashraf/sqlite-jenkins"
    registryCredential = 'docker_id'
    dockerImage = '' 
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
        script {
           dockerImage = docker.build registry + ":$BUILD_NUMBER" 
        }
      }
    }
    stage('Push into dockerhub')
    { 
      steps 
      { 
        script
        { 
            docker.withRegistry( '', registryCredential ) 
            { 
            dockerImage.push() 
            }

         } 
       }
    } 
   
    stage('Cleaning up') 
   { 
      steps { 
          sh "docker rmi $registry:$BUILD_NUMBER" 
      }
    } 
  }
}
node
{
  //grovy script
}
