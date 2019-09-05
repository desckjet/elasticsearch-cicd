pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
                sh './jenkins/build/gradle.sh gradle assemble'
			    sh './jenkins/build/build.sh'   
            }
        }                        
        stage('Push') {
            steps {
		        withCredentials([string(credentialsId: 'PASS', variable: 'PASS')]) {
                    sh './jenkins/push/push.sh'
                }
            } 
        }
    }
}
