#!/bin/bash

echo "Initializing Terraform..."
cd terraform
terraform init

echo "Applying Terraform..."
terraform apply -auto-approve

cd ..

echo "Building Docker Image..."
docker build -t younas126/devops_assignment_4:latest ./app

echo "Pushing Docker Image to Docker Hub..."
docker push younas126/devops_assignment_4:latest

echo "Deployment Complete!"
