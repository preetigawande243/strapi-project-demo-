#!/bin/bash
# Update system
sudo apt-get update -y
sudo apt-get upgrade -y

# Install Docker
sudo apt-get install -y docker.io docker-compose

# Start Docker
sudo systemctl start docker
sudo systemctl enable docker

# Create app folder
mkdir -p /home/ubuntu/strapi
cd /home/ubuntu/strapi

# Copy docker-compose file from user-data
cat <<EOF > docker-compose.yml
version: '3'
services:
  strapi:
    image: strapi/strapi
    ports:
      - "1337:1337"
    environment:
      DATABASE_CLIENT: sqlite
      NODE_ENV: development
    volumes:
      - ./app:/srv/app

  nginx:
    image: nginx:latest
    ports:
      - "80:80"
    volumes:
      - ./nginx.conf:/etc/nginx/nginx.conf
EOF

# Run docker compose
sudo docker-compose up -d
