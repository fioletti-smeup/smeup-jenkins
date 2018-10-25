#!/bin/bash

sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
usermod -a -G docker ${USERNAME}
systemctl enable docker
systemctl start docker

firewall-cmd --zone=public --add-port=8080/tcp --permanent
