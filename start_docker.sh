#!/bin/bash

# Stop any running containers
echo "Stopping any running containers..."
docker stop $(docker ps -q) || true

# Remove old containers
echo "Removing old containers..."
docker rm $(docker ps -a -q) || true

# Run new container
echo "Running new container..."
docker run -d -p 80:3000 --name nextjs-app "$DOCKER_REGISTRY_URL/$DOCKER_REGISTRY_USERNAME/nextjs-app:latest"
