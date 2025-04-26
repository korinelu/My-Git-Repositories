# 🚀 Scalable Static Website with Azure Static Web Apps + GitHub Actions

## 📌 Project Overview

This project demonstrates how to deploy a static website using **Azure Static Web Apps** with automated **GitHub Actions** integration. It enables continuous deployment of static content (HTML, CSS) to Azure every time changes are pushed to the `main` branch of the GitHub repository.

## 📁 Project Structure

azure-static-website/ ├── app/ │ └── index.html ├── .github/ │ └── workflows/ │ └── azure-static-web-app.yml └── README.md


## 🛠️ Tools & Technologies Used

| Tool                | Purpose                          |
|---------------------|----------------------------------|
| GitHub              | Version control                  |
| GitHub Actions      | Continuous integration & deployment |
| Azure Static Web Apps | Hosting static site             |
| HTML/CSS            | Static content                   |

## 🧱 Folder Details

- `app/index.html`: Basic static web page displaying a welcome message.
- `.github/workflows/azure-static-web-app.yml`: GitHub Actions workflow to deploy the app to Azure.
- `README.md`: Project documentation.

## ⚙️ GitHub Actions Workflow

The GitHub Actions workflow is triggered on every push to the `main` branch. It performs the following steps:

1. Checks out the code
2. Builds the static site (in this case, just HTML)
3. Deploys it to Azure Static Web Apps using a deployment token

## 🔐 GitHub Secrets Required

To enable deployment to Azure, the following secret is configured in the GitHub repository:

- `AZURE_STATIC_WEB_APPS_API_TOKEN`: Deployment token generated from Azure Static Web App portal.

## 🌐 Live Demo

The deployed site displays:

Welcome to the Static Website hosted on Azure! This is a simple site deployed using GitHub Actions and Azure Static Web Apps.



## ✅ Conclusion

This project showcases a simple, scalable, and automated static website deployment solution using Azure and GitHub Actions — ideal for modern DevOps workflows and cloud-based web hosting.

