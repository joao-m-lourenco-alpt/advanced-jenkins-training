
<div style="text-align:center; font-size: 24px;">
<p><strong>🔥 ADVANCED JENKINS TRAINING 🔥</strong></p>
</div>
<div style="text-align:center; font-size: 20px;">
<p><strong>📌Laboratory III Advanced - Jenkins Monitoring, Performance & Optimization</strong></p>
</div>

## 🎯 By the end of this lab, trainees will:
- Configure Jenkins to capture and analyze logs.
- Set up automated email notifications for failed builds.
- Implement automatic retry mechanisms for failing jobs.
- Monitor disk space and prevent storage-related failures.
- Track CPU and memory usage to prevent system overload.
- Automate cleanup tasks for optimal Jenkins performance.
- **Limit the use of agents** to optimize resource allocation.

---

## 📌 Objective
This lab guides you through advanced **failure monitoring**, **performance optimization**, and **agent resource management** in Jenkins to ensure a stable and efficient CI/CD environment.

---

## 1️⃣ Installing and Configuring Monitoring Plugins

### ✅ Objective: Install essential monitoring plugins for Jenkins.
🔹 **Tasks:**

- Navigate to **Jenkins Dashboard > Manage Jenkins > Manage Plugins**.
- Search for and install the following plugins:
  - **Monitoring**
  - **Metrics Plugin**
  - **Disk Usage Plugin**
  - **Prometheus Metrics Plugin** (for advanced monitoring)
  - **Email Extension Plugin** (if not installed yet)
- Restart Jenkins after installation.

✅ **Outcome:** Jenkins is now equipped with monitoring tools for better performance tracking.

---

## 2️⃣ Monitoring Failures and Alerts in Jenkins

### 📌 Configure Detailed Logs
- Go to **Jenkins Dashboard > Manage Jenkins > System Configuration**.
- Add `timestamps()` in your pipeline script for better debugging.

---

## 3️⃣ Configuring Prometheus for Jenkins Monitoring

### 📌 Install Prometheus Metrics Plugin
- Install **Prometheus Metrics Plugin**.
- Enable **Expose Prometheus metrics** and set the endpoint (e.g., `/prometheus`).

### 📌 Setting up Prometheus Server
- Install Prometheus using Docker:

```sh
docker run -d --name prometheus -p 9090:9090 prom/prometheus
```

- Create a configuration file (`prometheus.yml`) and mount it:

```sh
docker run -d --name prometheus -p 9090:9090     -v /path/to/prometheus.yml:/etc/prometheus/prometheus.yml     prom/prometheus
```

✅ **Outcome:** Prometheus will now scrape metrics from Jenkins.

---

## 4️⃣ Monitoring Disk Space and Performance

### 📌 Monitor and Manage Disk Space
- Create a **Freestyle Job** with the following shell script:

```sh
#!/bin/bash
THRESHOLD=80
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "🚨 Alert: Disk usage above ${THRESHOLD}%!"
    echo "Current usage: ${USAGE}%"
    echo "Executing automatic cleanup..."
    rm -rf /var/jenkins_home/workspace/*
    echo "✅ Cleanup completed. Check the usage again."
else
    echo "✅ Disk usage is within safe limits (${USAGE}%)."
fi
```

### 📌 Continuous Monitoring and Alerts
- Schedule the job to run periodically by setting **Build Triggers > Build periodically** with the following cron schedule:

```
H * * * *   # Runs once every hour
```


# 5️⃣ Configuring Email Notifications for Alerts in Jenkins

This tutorial will guide you through setting up **email notifications** in **Jenkins** to send alerts to your **Hotmail** account.

---

### Install Email Extension Plugin  
1. Go to **Jenkins Dashboard > Manage Jenkins > Manage Plugins**.  
2. In the **Available** tab, search for:  
   - **Email Extension Plugin**  
   - **Mailer Plugin** (if not already installed)  
3. **Install** both plugins.  
4. **Restart Jenkins** to apply the changes.  

---

### Configure Jenkins Email Settings  
1. Go to **Jenkins Dashboard > Manage Jenkins > Configure System**.  
2. Scroll down to **Extended E-mail Notification**.  
3. Fill in the following settings:  
   - **SMTP Server**: `smtp.office365.com`  
   - **Default user e-mail suffix**: `@hotmail.com`  
   - **Use SMTP Authentication**: ✅  
       - **User Name**: Your Hotmail email (e.g., `your_email@hotmail.com`)  
       - **Password**: Your Hotmail password (or App Password if 2FA is enabled)  
   - **Use SSL**: ❌ (Do not check this)  
   - **Use TLS**: ✅  
   - **SMTP Port**: `587`  
   - **Charset**: `UTF-8`  

4. Under **E-mail Notification** (if available), fill in:  
   - **SMTP Server**: `smtp.office365.com`  
   - **User Name**: Your Hotmail email (e.g., `your_email@hotmail.com`)  
   - **Password**: Your Hotmail password  
   - **Use SSL**: ❌  
   - **SMTP Port**: `587`  

---

### Test the Configuration  
1. Scroll to the bottom and click **Test configuration by sending a test e-mail**.  
2. Enter a recipient's email (your Hotmail or another email to test).  
3. Click **Test Configuration**.  
   - If successful, you should receive a test email.  
   - If it fails, double-check the **SMTP settings** and ensure **TLS** is enabled.  

---

### Add Email Notifications to a Pipeline  
To integrate email alerts in your **Jenkins Pipeline**, add the following to your `Jenkinsfile`:  

```groovy
post {
    success {
        emailext (
            subject: "Build Successful: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
            body: "Good news! The build was successful.\nCheck it here: ${env.BUILD_URL}",
            recipientProviders: [[$class: 'DevelopersRecipientProvider']]
        )
    }
    failure {
        emailext (
            subject: "Build Failed: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
            body: "Oops! The build failed.\nCheck the details here: ${env.BUILD_URL}",
            to: "your_email@hotmail.com"
        )
    }
    unstable {
        emailext (
            subject: "Build Unstable: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
            body: "The build is unstable. Check it here: ${env.BUILD_URL}",
            to: "your_email@hotmail.com"
        )
    }
}
```

---

## 6️⃣ Troubleshooting Tips  
- Ensure your **Hotmail account** allows **SMTP connections**.  
- If you have **Two-Factor Authentication (2FA)** enabled, create an **App Password** in your Hotmail account settings and use it instead of your regular password.  
- Check your **Spam/Junk folder** in Hotmail. Sometimes test emails end up there.  
- Review Jenkins logs (`Manage Jenkins > System Log`) for detailed error messages if the email fails to send.  

---

## 🔥 **You're All Set!**  
After following this tutorial, **Jenkins** will now send email notifications to your **Hotmail** whenever a build **succeeds**, **fails**, or becomes **unstable**. This keeps you informed about your CI/CD pipeline status in real time! 🚀


---

## 📌 Conclusion
By following this step-by-step guide, you have:
✅ Installed and configured monitoring plugins (including Prometheus).  
✅ Implemented disk space and performance monitoring.  

🚀 **These steps make your Jenkins CI/CD pipeline more resilient and optimized!** 🚀
