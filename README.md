#  Multi-Stage Docker Deployment on AWS EC2

##  Project Overview

This project demonstrates the use of multi-stage Docker builds to create optimized and lightweight container images, deployed on AWS EC2.

---

##  Architecture

User → AWS EC2 → Docker Container (Multi-Stage Optimized Image)

---

##  Tech Stack

* Python (Flask)
* Docker (Multi-stage build)
* AWS EC2

---

##  Project Structure

```id="e5f1lx"
.
├── app.py
├── requirements.txt
├── Dockerfile
```

---

##  Multi-Stage Build

### Stage 1: Build Environment

* Install dependencies
* Prepare application

### Stage 2: Lightweight Runtime

* Uses Alpine Linux
* Copies only required files

---

##  Build & Run

```id="v1csx9"
docker build -t multistage-app .
docker run -d -p 5000:5000 multistage-app
```

---

##  AWS Deployment

1. Launch EC2 instance
2. Install Docker
3. Clone repository
4. Build and run container

---

##  Access Application

```id="i4yqnn"
http://<EC2-PUBLIC-IP>:5000
```

---

##  Key Features

* Optimized Docker image
* Reduced image size
* Faster deployment
* Production-ready approach

---

##  Learnings

* Multi-stage Docker builds
* Image optimization techniques
* Cloud deployment strategies

---

##  Author

Avinash Bagul
