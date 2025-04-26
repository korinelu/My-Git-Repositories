📝 CI/CD Pipeline with GitHub Actions & Docker – Project Report
1. Introduction
This project demonstrates the implementation of a complete Continuous Integration and Continuous Deployment (CI/CD) pipeline using GitHub Actions and Docker. It automates the process of building, testing, pushing, and deploying a simple web application to a cloud-hosted virtual machine, enabling faster and more reliable software delivery.

2. Abstract
The goal was to set up a lightweight yet functional CI/CD system without relying on any paid cloud CI tools. A simple HTML web application was used, and the pipeline automates the following steps:

Docker image build on code push

Push to Docker Hub

Remote deployment to an Azure VM

This project helps simulate real-world DevOps scenarios, focusing on containerized app deployment with version control and automation pipelines.

3. Tools & Technologies Used

Tool	Purpose
GitHub Actions	CI/CD orchestration
Docker	Containerization of the application
Docker Hub	Container registry
Azure VM	Hosting and deploying the application
NGINX	Web server for serving the HTML file
Git	Version control and GitHub integration
4. Steps Involved in Building the Project
Folder Structure Setup

Project structured as:

pgsql
Copy
Edit
hello-ci-cd-app/
├── app/
│   └── index.html
├── Dockerfile
├── .github/
│   └── workflows/
│       └── ci-cd.yml
└── README.md
Dockerfile

Based on nginx:alpine, this serves a static HTML file located in /usr/share/nginx/html/index.html.

CI/CD Workflow (ci-cd.yml)

Triggered on push to main branch.

Steps:

Checkout code

Build Docker image

Push to Docker Hub

SSH into Azure VM and deploy the container

GitHub Secrets Configured

DOCKER_USERNAME, DOCKER_PASSWORD

AZURE_VM_IP, AZURE_VM_USER, AZURE_VM_PASSWORD

Azure VM Configuration

Docker installed and running

Port 80 allowed in the Network Security Group

Automated deployment using appleboy/ssh-action

5. Conclusion
This project successfully implements an end-to-end automated pipeline for deploying a containerized web application using GitHub Actions and Docker. The use of GitHub Secrets ensured secure handling of credentials. With this setup, every change to the main branch results in a live deployment — demonstrating the power of DevOps automation in real-world environments.

The live application displayed the message:

🚀 Hello World!
This site is deployed using GitHub Actions and Docker on Azure VM.