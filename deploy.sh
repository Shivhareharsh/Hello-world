#!/bin/bash

# Hello World App - Local Deployment Script

echo "========================================="
echo "Deploying Hello World Application"
echo "========================================="

# Build the Docker image
echo "Building Docker image..."
docker build -t hello-world-app:latest .

# Stop and remove existing container if any
echo "Cleaning up existing containers..."
docker rm -f hello-world-app 2>/dev/null || true

# Run the container
echo "Starting container..."
docker run -d -p 8080:80 --name hello-world-app hello-world-app:latest

echo "========================================="
echo "Deployment complete!"
echo "Application running at: http://localhost:8080"
echo "========================================="

# Show running container
docker ps | grep hello-world-app

