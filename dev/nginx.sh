#!/bin/bash

# Update the package repository
sudo yum update -y

# Install Nginx
sudo amazon-linux-extras install -y nginx1.12

# Start the Nginx service
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Verify that Nginx is running
sudo systemctl status nginx
