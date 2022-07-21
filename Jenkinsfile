pipeline {
    agent any
    tools{
        maven 'maven_3.8.6'
        jdk 'jdk-16.0.2'
    }
    stages{
        stage('Build Maven'){
            steps{
				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/devops-git-jenkins-docker-dockerhub-kubernetees']]])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
					bat 'docker build -t aymen1102/devops-git-jenkins-docker-dockerhub-kubernetees .'
                }
            }

        }
        stage('Push image to docker Hub'){
            steps{
                withDockerRegistry([ credentialsId: "dockerhub_access_login_password", url: "" ]) {
					bat 'docker push aymen1102/devops-git-jenkins-docker-dockerhub-kubernetees:latest'
                }
            }
        }
		stage('Deploy to kubernetes k8s cluster'){
            steps{
                script{
					kubernetesDeploy (configs: 'deploymentservice.yml', kubeconfigId: 'kubernetes_access')
                }
            }
        }
    }
}