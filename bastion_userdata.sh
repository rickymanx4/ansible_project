#!/bin/bash
sudo hostnamectl set-hostname bastion.example.com
sudo bash
sudo dnf update -y
sudo dnf install -y httpd
sudo aws s3 cp s3://project-sk103003/ec2-key.pem /root/
sudo systemctl enable --now httpd
sudo chmod 400 /root/ec2-key.pem
