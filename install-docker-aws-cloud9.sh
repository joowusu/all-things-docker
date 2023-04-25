#!/bin/bash

# A bash script that installs Docker on an 
# Amazon Linux instance in Amazon EC2 vli Cloud9 IDE.
# By Joan Owusu

mkdir "name-of-directory"
cd "name-of-directory"

sudo yum update -y  # Update packages
sudo yum install docker -y
sudo usermod -a -G docker ec2-user  # Alternatively:  sudo usermond -a -G docker $USER

sudo systemctl start docker.service
sudo systemctl enable docker.service  # Start Docker service when server boots.
sudo systemctl status docker.service
sudo systemctl is-active docker  # Check docker state. 

# Run simple docker commands
docker verion
docker info