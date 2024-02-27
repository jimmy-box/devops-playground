#!/bin/bash

set -e

#Install dependencies
sudo apt update -y
# sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
# #apt-cache policy docker-ce
# sudo apt install docker-ce


#install docker compose
# sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
sudo apt install docker-compose
docker-compose --version






# sudo su -
# yum update -y
# amazon-linux-extras install docker
# service docker start
# #sudo usermod -a -G docker ec2-user
# yum install  -y git 
# curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose
# docker-compose version
# docker-compose up -d
