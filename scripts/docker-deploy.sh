#!/bin/bash

cd /app/login-page


# build the latest Docker image
sudo docker build -t node-app:latest .

# Stop and remove the existing container (if running)
sudo docker stop my-container || true
sudo docker rm my-container || true

# Run the Docker container with the updated image
sudo docker run -d --name my-container -p 80:80 node-app:latest
