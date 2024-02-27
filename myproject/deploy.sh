#!/bin/bash

set -e

#Install dependencies
sudo apt update -y
sudo apt install nginx -y
sudo apt install docker-compose
sudo apt-get install docker-compose-plugin





sudo docker compose up -d

