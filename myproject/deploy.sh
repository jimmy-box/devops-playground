#!/bin/bash

set -e

#Install dependencies
sudo apt update -y
#sudo apt install nginx -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# sudo apt install docker-compose
# sudo apt-get install docker-compose-plugin -y

sudo docker compose up -d

