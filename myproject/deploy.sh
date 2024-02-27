#!/bin/bash

set -e

#Install dependencies
sudo apt update -y
sudo apt install nginx -y
sudo apt install docker-compose
sudo apt-get install docker-compose-plugin -y
echo $USER
sudo groupadd docker
sudo usermod -aG docker $USER
# sudo su - 
# cd /home/ubuntu/myproject





# sudo docker compose up -d

