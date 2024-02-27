#!/bin/bash

set -e

#Install dependencies
sudo apt update -y
sudo apt install nginx -y
sudo apt install docker-compose
sudo apt-get install docker-compose-plugin -y
echo $USER
sudo chmod 757 /var/run/docker.sock





sudo docker compose up -d

