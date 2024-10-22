#!/bin/bash
echo "Stopping any running containers..."
docker stop $(docker ps -q) || true

echo "Removing old containers..."
docker rm $(docker ps -a -q) || true

echo "Running new container..."
docker run -d -p 80:3000 --name nextjs-app "$DOCKER_REGISTRY_URL/$DOCKER_REGISTRY_USERNAME/nextjs-app:latest"
