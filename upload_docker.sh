#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=nevincansel/udacityproject3

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag udacityproject3:latest nevincansel/udacityproject3:latest

# Step 3:
docker push nevincansel/udacityproject3:latest
