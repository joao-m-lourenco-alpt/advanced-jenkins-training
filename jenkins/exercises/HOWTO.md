# Jenkins
In this document, you will find all the necessary commands and links to follow the Jenkins training on your machine.
## Pre-Requisites
For this training, you will need to install Docker and Visual Studio Code. I used Windows, but you can use any operating system you prefer, as the training will focus more on the commands provided by Docker.

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
