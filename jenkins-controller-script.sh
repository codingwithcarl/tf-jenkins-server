#!/bin/bash
sudo yum update -y

# install jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade -y

# Add required dependencies for the jenkins package
sudo yum install -y java-17-amazon-corretto-headless
sudo yum install -y jenkins
sudo systemctl daemon-reload

sudo systemctl enable jenkins
sudo systemctl start jenkins
