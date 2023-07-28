# udacity-project5
The capstone project for udacity nano degree Cloud Devops Engineer
[![CircleCI](https://dl.circleci.com/insights-snapshot/gh/duyhieu108/udacity-project5/main/default/badge.svg?window=30d)](https://app.circleci.com/insights/github/duyhieu108/udacity-project5/workflows/default/overview?branch=main&reporting-window=last-30-days&insights-snapshot=true)

## Project Overview
Just a simple demonstrate of applying building docker image push to public repository and integrate with CI/CD process through rolling deployment to AWS EKS public cloud service.

### Docker Hub repository
https://hub.docker.com/repository/docker/hieudd/myapp/general

### Project Tasks
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and push to Docker Hub
* Configure Kubernetes and create a Kubernetes cluster by cloudformation via AWS EKS
* Deploy containers using Kubernetes and run the application
* Upload a complete Github repo with CircleCI and indicate that your code has been tested

### Files descriptions
1. src/index.js: NodeJS expose simple web page to say Hello, ex: {url}:3000/?name=xxxxx.
2. Dockerfile: docker image's constructions to build Docker image.
3. k8s-deployment.yml: configuration for EKS deploy container with rolling deployment.
4. Makefile: for automatic setup development environment and run lint check.
5. README.md: this file describe about projects.
6. k8s-services.yml: configuration for EKS create Load Balancing end point.
7. .circleci/config.yml: circleCI script for automatic config CICD flow.
8. evidences folder: images for project Rubric.