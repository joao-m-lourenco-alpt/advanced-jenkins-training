<div style="text-align:center; font-size: 24px;"> <p><strong>🔥 ADVANCED JENKINS TRAINING 🔥</strong></p> </div> <div style="text-align:center; font-size: 20px;"> <p><strong>Challenge</strong></p> </div> <br>

<br>

# 📌 Deploy Java Application on Docker 🐳                       

## **Challenge Description**  
Altice company has developed a **Java-based Maven Application** and wants to automate the **build, test, and deployment** process using **Jenkins** and **Docker**.  

The goal is to ensure that all code changes are automatically tested and deployed in a Docker environment without manual intervention.

---

## **Functional Requirements**  

### 1️⃣ **Continuous Integration (CI)**  
   - Jenkins must automatically clone the source code from the GitHub repository.  
   - The code must be compiled using **Maven**.  
   - Unit tests must be executed before proceeding with the deployment.  

### 2️⃣ **Continuous Deployment (CD)**  
   - If tests pass successfully, the application should be packaged as a **Docker Image**.  
   - The Docker image must be stored in a **Docker Registry** (Docker Hub).  
   - The application should be deployed as a **Docker container** on a configured server.  

### 3️⃣ **Configuration Management**  
   - Jenkins should read **environment variables** to set dynamic configurations (e.g., `DOCKER_IMAGE`, `DOCKERHUB_CREDENTIAL`, etc).  
   - The deployment process should allow selecting the environment (`QA`, `PROD`).  

### 4️⃣ **Monitoring**  
   - After deployment, a step should check whether the service is running correctly (`curl http://localhost:8080/health`).  
   - Container logs should be captured for analysis (`docker logs <container_id>`).  

### 5️⃣ **Disk Space Monitoring**  
   - Ensure that the server has enough disk space before building or deploying the Docker container.  
   - Implement a Jenkins step to check the available disk space (`df -h`) and alert if it is below a defined threshold.

### 6️⃣ **Email Notifications**  
   - Configure Jenkins to send email notifications for the following scenarios:
     - Build Success
     - Build Failure
     - Low Disk Space Alert
   - Use Editable Email Notification Plugin in Jenkins.  
   - Configure recipients and alert message content.  

---

## **Technologies Requirement**  
✔ **Jenkins** for CI/CD  
✔ **Docker** for containerization and deployment  
✔ **Maven** for building and testing  
✔ **GitHub** as the code repository  
✔ **Docker Hub** for image storage  

---

## **Step 4: Run and Validate**  
   - Execute the pipeline in Jenkins and validate whether the deployment was successful.  
   - Test the application by pulling the Docker image:
     ```bash
     docker pull index.docker.io/{username/xxxx}:latest
     ```
   - Check the container output:
     ```bash
     docker run --name {provide project name} index.docker.io/{username/xxxx}:latest
     ```

---

## **Support**  
> [Jenkins File](/jenkins/Challenge/Jenkinsfile)  
> [Docker File](/jenkins/Challenge/Dockerfile)  
