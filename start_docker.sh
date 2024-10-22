#!/bin/bash

# Pull the latest image
echo "Pulling the latest image..."
docker pull devops8297/nextjs-app

# Run new container
echo "Running new container..."
docker run -d -p 80:3000 --name nextjs-app devops8297/nextjs-app
