# FROM permet de définir depuis quelle base votre image va être créée
FROM openjdk:16

# LABEL maintainer permet de définir l’auteur de l’image
LABEL maintener="Aymen Baroudi"

#ADD permet de copier un fichier depuis la machine hôte ou depuis une URL
ADD target/devops-git-jenkins-docker-dockerhub-kubernetees-0.0.1-SNAPSHOT.jar devops-git-jenkins-docker-dockerhub-kubernetees.jar

#ENTRYPOINT permet d’ajouter une commande qui sera exécutée par défaut
ENTRYPOINT ["java","-jar","devops-git-jenkins-docker-dockerhub-kubernetees.jar"]
