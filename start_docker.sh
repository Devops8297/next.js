#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Pull the latest image
echo "Pulling the latest image..."
if ! docker pull devops8297/nextjs-app; then
    echo "Failed to pull the latest image."
    exit 1
fi

# Stop and remove existing container if it exists
if [ "$(docker ps -aq -f name=nextjs-app)" ]; then
    echo "Stopping and removing existing container..."
    docker stop nextjs-app
    docker rm nextjs-app
fi

# Run new container
echo "Running new container..."
if ! docker run -d -p 80:3000 --name nextjs-app devops8297/nextjs-app; then
    echo "Failed to run the new container."
    exit 1
fi

echo "Container is up and running!"
