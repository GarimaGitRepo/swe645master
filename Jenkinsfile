pipeline {
  agent any
	environment {
		DOCKERHUB_PASS = 'Zameer@0497'
	}
	stages {
		stage("Building the Student Survey Image") {
			steps {
				script {
				  checkout scm
					sh 'rm -rf *.war'
					sh 'jar -cfv SWE645.war -C surveywebapp/ .'
					sh 'echo ${BUILD_TIMESTAMP}'
					sh 'docker login -u syedzameer0497 -p Zameer@0497'
					sh 'cat Reached Here'
					def customImage = docker.build("syedzameer0497/swe645hub:${BUILD_TIMESTAMP}")
				}
			}
		}
		stage("Pushing Image to DockerHub") {
			steps {
				script {
					sh 'docker push syedzameer0497/swe645hub:${BUILD_TIMESTAMP}'
				}
			}
		}
		stage("Deploying to Rancher as single pod") {
			steps {
				sh 'kubectl set image deployment/swe645war-pipeline swe645war-pipeline=syedzameer0497/swe645hub:${BUILD_TIMESTAMP} -n jenkins-pipeline'
			}
		}
		stage("Deploying to Rancher as with load balancer") {
			steps {
				sh 'kubectl set image deployment/studentsurvey645-lb studentsurvey645-lb=syedzameer0497/swe645hub:${BUILD_TIMESTAMP} -n jenkins-pipeline'
			}
		}
  }
}
