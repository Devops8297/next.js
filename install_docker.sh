#!/bin/bash
if ! [ -x "$(command -v docker)" ]; then
  echo "Docker is not installed. Installing Docker..."
  sudo apt-get update
  sudo apt-get install -y docker.io
fi
