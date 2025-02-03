<div style="text-align:center; font-size: 24px;">
<p><strong>🔥 ADVANCED JENKINS TRAINING 🔥</strong></p>
</div>
<div style="text-align:center; font-size: 20px;">
<p><strong>Challenge</strong></p>
</div>

<br>


# 📌Deploy Java Application on Docker 🐳                       
                                                                                            
## **Challenge description**  
Altice company has developed a **Java-based Maven Application** and wants to automate the **build, test, and deployment** process using **Jenkins** and **Docker**.  

The goal is to ensure that all code changes are automatically tested and deployed in a Docker environment without manual intervention.

---

## **Functional Requirements**  

## 1️⃣ **Continuous Integration (CI)**  
   - Jenkins must automatically clone the source code from the GitHub repository.  
   - The code must be compiled using **Maven**.  
   - Unit tests must be executed before proceeding with the deployment.  

## 2️⃣ **Continuous Deployment (CD)**  
   - If tests pass successfully, the application should be packaged as a **Docker Image**.  
   - The Docker image must be stored in a **Docker Registry** (Docker Hub).  
   - The application should be deployed as a **Docker container** on a configured server.  

## 3️⃣ **Configuration Management**  
   - Jenkins should read **environment variables** to set dynamic configurations (e.g., `DOCKER_IMAGE`, `DOCKERHUB_CREDENTIAL`, etc).  
   - The deployment process should allow selecting the environment (`QA`, `PROD`).  

## 4️⃣ **Monitoring**  
   - After deployment, a step should check whether the service is running correctly (`curl http://localhost:8080/health`).  
   - Container logs should be captured for analysis (`docker logs <container_id>`).  

---

## **Technologies requirement**  
✔ **Jenkins** for CI/CD  
✔ **Docker** for containerization and deployment  
✔ **Maven** for building and testing  
✔ **GitHub** as the code repository  
✔ **Docker Hub** for image storage  


## 5️⃣ **Step 4: Run and Validate**  
   - Execute the pipeline in Jenkins and validate whether the deployment was successful.  
   - Test the application by pull:
```bash
    docker pull index.docker.io/{username/xxxx}:latest
```
   - Check the container output:

```bash
   docker run --name {provide project name} index.docker.io/{username/xxxx}:latest
```
---
## **Support**  
> [jenkins File](/jenkins/Challenge/Jenkinsfile) <br>
> [jenkins Docker File](/jenkins/Challenge/Dockerfile)

