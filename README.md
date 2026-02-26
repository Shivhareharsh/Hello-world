# Hello World CI/CD Pipeline

## Project Overview
This is a simple Hello World web application with automated CI/CD pipeline.

## Components
- `index.html` - Basic Hello World HTML page
- `Dockerfile` - Container configuration
- `.github/workflows/ci-cd.yml` - GitHub Actions workflow

## Pipeline Flow
1. Code pushed to repository
2. GitHub Actions triggers automatically
3. Docker image is built
4. Image is pushed to Docker Hub (optional)
5. Local deployment can be triggered

## Usage
- Local: `docker build -t hello-world-app . && docker run -d -p 8080:80 hello-world-app`

