#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="kelvinator07/projectml"

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl create deployment prediction-as-a-pod --image=$dockerpath:latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/prediction-as-a-pod 8000:80
