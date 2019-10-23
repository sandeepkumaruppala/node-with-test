pipeline {
    agent any
    environment{
	image_tag = "amitp30/nodeapp:node-test"
    }
    stages {
        stage('Build image') {
            steps {
                echo 'Building docker image...!!'
                sh 'docker build -t $image_tag .'
            }
        }
        stage('Push image'){
        	steps{
        		script{
        			withDockerRegistry(credentialsId: 'docker-hub-amitp30', url: '') {
        				sh 'docker push $image_tag'
        			}
        		}
        	}
        }
        stage('Anchore_Security_Scan'){
        	steps{
        		echo 'keep ancore scanner here'
        		sh 'echo "$image_tag" ${WORKSPACE}/Dockerfile > anchore_images'
        		anchore 'anchore_images'
        	}
        }
	stage('test'){
		steps{
			sh 'docker run --rm --name test $image_tag npm test '
		}
	}
    }
}
