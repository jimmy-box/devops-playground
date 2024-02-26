!#/bin/bash

set -e
sudo su -
yum update -y
amazon-linux-extras install docker
service docker start
#sudo usermod -a -G docker ec2-user
yum install  -y git 
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose version
docker-compose up -d
