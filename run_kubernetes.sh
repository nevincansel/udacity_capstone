#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=nevincansel/udacitycapstone

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl run udacitycapstone\
    --image=$dockerpath\
    --port=80 --labels app=udacitycapstone

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# List kubernetes services
kubectl get svc

echo "Sleeping for 10 seconds while waiting for pod to come up."
sleep 10

# Step 5:
# Forward the container port to a host
kubectl expose deployment udacitycapstone --type=LoadBalancer --port=8080 --target-port=80

