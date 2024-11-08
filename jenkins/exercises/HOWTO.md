# Jenkins
In this document, you will find all the necessary commands and links to follow the Jenkins training on your machine.
## Pre-Requisites
For this training, you will need to install Docker and Visual Studio Code. I used Windows, but you can use any operating system you prefer, as the training will focus more on the commands provided by Docker. You will also need a GitHub account, so feel free to create one as well. It will be used during this course.

- [Docker Download](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module) - Download Docker for Windows
- [Docker Desktop for Windows](https://docs.docker.com/desktop/setup/install/windows-install/) - Download Docker Desktop for Windows
- [VS Code Download](https://code.visualstudio.com/Download) - Download VS Code for Windows

It's optional but i would suggest you to download _Bracket Pair Colorizer_ extension for VS Code
## Run Jenkins using Docker
Start Docker on your machine and run the following command. This will create a container with Jenkins that you'll use for this training.
```
docker run -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17
```
If you need more information regarding initializing Jenkins on docker here's the url:
[Jenkins Github](https://github.com/jenkinsci/docker)

**Important Note:** Save the password that's given to you at the end.

Open in the browser: `localhost:8080` and when asked to unlock Jenkins, place the password you saved on the **Administrator Password** text input.

## Pipelines

Link with a simple Java application using Maven to test our Jenkins pipeline:

[Simple Java Application](https://github.com/devopsdelivery/simple-java-maven-app)

Usefull links for learning more about Pipeline Syntax and Basic Steps:

[Pipeline Syntax](https://www.jenkins.io/doc/book/pipeline/syntax/)

[Pipeline Basic Steps](https://www.jenkins.io/doc/pipeline/steps/workflow-basic-steps/)

## Install Maven on your container
- Open an interactive terminal inside your container
  ```
  docker exec -it -u root *id of the container* /bin/bash
  ```
- Update packages
  ```
  apt-get update
  ```
- Install Maven
  ```
  apt-get install maven
  ```

 ## Variables

Usefull link to learn more about Environment Variables:

 [Environment Variables on Jenkins](https://www.jenkins.io/doc/book/pipeline/jenkinsfile/#using-environment-variables)

 ## Cleanup your working environment

 1 - Delete forked repository
 
 2 - Stop Docker container
 
 3 - Delete Docker container
 
   ```
docker container ls -a
   ```

   ```
docker container rm *id of your container*
   ```

4 - Delete volumes

```
docker volume ls
```
Copy the name and remove the volume with:

```
docker volume rm jenkins_home
```
