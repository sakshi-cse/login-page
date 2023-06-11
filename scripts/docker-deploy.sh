#!/bin/bash

cd /app


# build the latest Docker image
docker build -t node-app:latest .

# Stop and remove the existing container (if running)
docker stop my-container || true
docker rm my-container || true

# Run the Docker container with the updated image
docker run -d --name my-container -p 80:80 node-app:latest
