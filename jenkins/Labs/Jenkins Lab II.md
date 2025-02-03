<div style="text-align:center; font-size: 24px;">
<p><strong>🔥 ADVANCED JENKINS TRAINING 🔥</strong></p>
</div>
<div style="text-align:center; font-size: 20px;">
<p><strong>📌Laboratory II</strong></p>
</div>

---
## 1️⃣ Jenkins Plugins
### ✅ Objective: Install and configure essential Jenkins plugins.  
**Prerequisites**: Jenkins instance with admin access.

🔹 **Tasks:**

-  **Install Plugins**:
   - Navigate to **Dashboard > Manage Jenkins > Plugins > Available plugins**.
   - Install the following plugins (if not exist):  
     - Docker
     - Docker API
     - Docker Common   

- **Configure Credentials**:
   - Go to **Dashboard > Manage Jenkins > Credentials**
   - Add a new `Username with Password` credential for your Git repository.
   - Provide a name for the Git ID (e.g., git-credentials).
   - Add a new `Username with Password` credential for your Docker hub.
   - Provide a name for the Docker Hub ID (e.g., docker-hub-credentials).
   
   ---

## 2️⃣Declarative vs Scripted Pipeline
### ✅ Objective: Write and compare Declarative and Scripted Pipelines.

🔹 **Tasks:**

- **Declarative Pipeline**:
   - Create a new Pipeline job with name **DeclarativePipeline** and paste the following code:
     ```groovy
     pipeline {
       agent any
       stages {
         stage('Build') {
           steps {
             echo 'Building...'
           }
         }
       }
     }
     ```
   - Run the pipeline and observe the output.

- **Scripted Pipeline**:
   - Create another Pipeline job with name **ScriptedPipeline**  and paste this code:
     ```groovy
     node {
       stage('Build') {
         echo 'Building...'
       }
     }
     ```
   - Run the pipeline and compare the syntax with the Declarative example.

---

## 3️⃣ Connect Jenkins to a Git Repository
### ✅ Objective: Configure Jenkins to pull code from a Git repository.  
**Prerequisites**: A GitHub account and a sample repository (e.g., [https://github.com/devopsdelivery/yoda](https://github.com/devopsdelivery/yoda)).

🔹 **Tasks:**

- Create a new Pipeline job.
- Under **Pipeline > Definition**, select "Pipeline script from SCM".
- Configure:
   - **SCM**: Git  
   - **Repository URL**: Your Git repo URL (e.g., `https://github.com/devopsdelivery/yoda.git`)  
   - **Credentials**: Select the credentials created in Exercise 1.  
- Save and run the job. Verify that Jenkins clones the repository.

---

## 4️⃣  First Build and Code Testing
### ✅ Objective: Run a build and integrate automated tests.

🔹 **Tasks:**

- Modify the Declarative Pipeline from Exercise 2 to include a test stage:
   ```groovy
   pipeline {
     agent any
     stages {
       stage('Build') {
         steps { 
            echo 'Building...' 
             // Replace with actual build command (`mvn clean package`)
            } 
            }
       stage('Test') {
         steps {
           sh 'echo "Running unit tests..."'
           // Replace with actual test command (`mvn test`)
         }
       }
     }
   }
  ```
---

## 5️⃣ Artifact Deployment with Docker

### ✅ Objective: Deploy artifacts using Docker in Jenkins.  

🔹 **Tasks:**

#### - Configure Docker in Jenkins:
- Access the Jenkins container:
```bash
   docker ps
   docker exec -it <CONTAINER_ID> /bin/bash
   ```

- Update packages and install Docker CLI:
```bash
   apt-get update && apt-get install -y docker.io
   ```
- Create a Docker group and add the Jenkins user:
```bash
groupadd docker
usermod -aG docker jenkins
chown root:docker /var/run/docker.sock
chmod 666 /var/run/docker.sock
```
- Exit in Jenkins container:
```bash
 exit
 ```
- Restart the Jenkins container:
```bash
docker restart <CONTAINER_ID>
```

- Create a Deployment Pipeline:
```groovy
pipeline {
  agent any
   environment {
        DOCKERHUB_CREDENTIALS = 'your-docker-hub-credential-id' // replace with your ID docker-hub-credentential configuren in jenkins credentials
        IMAGE_NAME = 'your-docker-image'// replace with your username docker hub:e.g, username/xxxx
    }

    /** TODO 
    1. add clean up stage
    2. add clone repository stage
    3. add maven build stage
    4. add maven test stage
    */

  stages {
    stage('Docker build') {
      steps {
        script {
           docker.build("${IMAGE_NAME}")
        }
      }
    }
    stage('docker push') {
      steps {
         docker.withRegistry('', "${DOCKERHUB_CREDENTIALS}") {
                        docker.image("${IMAGE_NAME}").push("latest")
                    }
      }
    }
  }
}
```