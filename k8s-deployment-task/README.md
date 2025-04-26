# k8s-deployment-task

# Kubernetes Deployment Task - AKS

## Objective:
Deploy and manage a simple application in an AKS cluster using Kubernetes concepts.

## Tools Used:
- AKS (Azure Kubernetes Service)
- kubectl
- Docker (used in other tasks)
- YAML manifests

## Files:
- `deployment.yaml` - Creates an Nginx deployment with 2 replicas
- `service.yaml` - Exposes the Nginx deployment using a LoadBalancer service

## Steps Followed:
1. Connected to AKS cluster via `kubectl`
2. Applied the deployment manifest
3. Exposed the app with a LoadBalancer service
4. Verified pods and accessed the app in a browser
5. Scaled deployment to 4 replicas
6. Described pod details and fetched logs

## Screenshots:
Screenshots included in `screenshots/` folder showing:
- Running pods
- Active service with EXTERNAL-IP
- Nginx homepage in browser
- Scaled pod replicas
- `kubectl describe pod` output
- Logs from Nginx pod

## Outcome:
Learned how to deploy, scale, expose, and troubleshoot apps on a Kubernetes cluster (AKS).
