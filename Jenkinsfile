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

                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/hibernate-entity-manager-spring-data-jpa']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/java-toolbox']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/junit-mockito-testing']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/microservice-spring-cloud-eureka-gateway']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/microservices-spring-cloud-eureka-restemplate-webclient-openfeign']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/rest-api-mongodb']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/spring-data-jpa-docker']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/spring-security-jwt']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/spring-security-mvc-jwt-keycloak']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/spring-security-mvc-thymleaf']]])
                bat 'mvn clean install'

				checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/aymen1102/springboot-docker']]])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t aymen1102/devops-git-jenkins-docker-dockerhub-kubernetees .'
                    bat 'docker build -t aymen1102/hibernate-entity-manager-spring-data-jpa .'
					bat 'docker build -t aymen1102/java-toolbox .'
					bat 'docker build -t aymen1102/junit-mockito-testing .'
					bat 'docker build -t aymen1102/microservice-spring-cloud-eureka-gateway .'
					bat 'docker build -t aymen1102/microservices-spring-cloud-eureka-restemplate-webclient-openfeign .'
					bat 'docker build -t aymen1102/rest-api-mongodb .'
					bat 'docker build -t aymen1102/spring-data-jpa-docker .'
					bat 'docker build -t aymen1102/spring-security-jwt .'
					bat 'docker build -t aymen1102/spring-security-mvc-jwt-keycloak .'
					bat 'docker build -t aymen1102/spring-security-mvc-thymleaf .'
					bat 'docker build -t aymen1102/springboot-docker .'
                }
            }

        }
        stage('Push image to docker Hub'){
            steps{
                withDockerRegistry([ credentialsId: "dockerhub_access_login_password", url: "" ]) {
                    bat 'docker push aymen1102/devops-git-jenkins-docker-dockerhub-kubernetees:latest'
                    bat 'docker push aymen1102/hibernate-entity-manager-spring-data-jpa:latest'
					bat 'docker push aymen1102/java-toolbox:latest'
					bat 'docker push aymen1102/junit-mockito-testing:latest'
					bat 'docker push aymen1102/microservice-spring-cloud-eureka-gateway:latest'
					bat 'docker push aymen1102/microservices-spring-cloud-eureka-restemplate-webclient-openfeign:latest'
					bat 'docker push aymen1102/rest-api-mongodb:latest'
					bat 'docker push aymen1102/spring-data-jpa-docker:latest'
					bat 'docker push aymen1102/spring-security-jwt:latest'
					bat 'docker push aymen1102/spring-security-mvc-jwt-keycloak:latest'
					bat 'docker push aymen1102/spring-security-mvc-thymleaf:latest'
					bat 'docker push aymen1102/springboot-docker:latest'
                }
            }
        }
    }
}