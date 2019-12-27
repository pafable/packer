#!/bin/sh

echo "This image was created by Phil Afable 12/2019" >> /home/ec2-user/date.txt

pwd
ls -la
sudo yum update -y && yum upgrade -y
sudo yum install -y wget amazon-efs-utils
sudo mkdir /efs

#sudo useradd --no-create-home --shell /bin/false node-exporter-user
#sudo wget -P /usr/bin https://github.com/prometheus/node_exporter/releases/download/v0.18.1/node_exporter-0.18.1.linux-amd64.tar.gz
#sudo tar -xvf /usr/bin/node_exporter-0.18.1.linux-amd64.tar.gz
#sudo mv /tmp/node-exporter.service /etc/systemd/system