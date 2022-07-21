package com.aybaroud;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DevopsGitJenkinsDockerDockerhubKuberneteesApplication {

	@GetMapping
	public String message(){
		return "devops-git-jenkins-docker-dockerhub-kubernetees";
	}

	public static void main(String[] args) {
		SpringApplication.run(DevopsGitJenkinsDockerDockerhubKuberneteesApplication.class, args);
	}

}
