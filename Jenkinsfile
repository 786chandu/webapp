pipeline{
       agent any
       stages {
	       stage('build'){
		       steps{
                        script {
		            withDockerRegistry([credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/']){
			        def image = docker.build("chandu786/webapp:${BUILD_NUMBER}", "-f Dockerfile . ")
				image.push()
				}
			}
		   }
		}
	}
}	
