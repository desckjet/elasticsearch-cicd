pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh '''
			        ./jenkins/build/gradle.sh gradle assemble
			        ./jenkins/build/build.sh
           
                    '''   
            }
            /*post {
                success {
                    archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
                }
            }*/

        }                        
        /*stage('Test') {
            steps {
		sh './jenkins/test/test.sh mvn test' 
            }
            post {
                always {
                    junit 'java-app/target/surefire-reports/*.xml'
                }
	    }

        }*/
        /*stage('Push') {
                steps {
		            withCredentials([string(credentialsId: 'PASS', variable: 'PASS')]) {
                        sh './jenkins/push/push.sh'
                    }
                }
            
        }*/
        /*stage('Deploy') {
            steps {
       		sh './jenkins/deploy/deploy.sh'
            }
        }*/
    }
}
