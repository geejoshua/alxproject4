#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=graceakinsola/project

# Step 2
# Run the Docker Hub container with kubernetes
echo "Docker path $dockerpath"
kubectl run project4 --image=graceakinsola/project --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project4 8000:80