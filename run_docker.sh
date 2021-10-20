#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
# docker build -t projectml .
docker build --tag=projectml:latest .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
# docker run -d -p 8000:80 projectml:latest
docker run -p 8000:80 projectml:latest

# debug
# docker run -it --entrypoint /bin/bash projectml 
