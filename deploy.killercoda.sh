#!/bin/sh
  
echo "Init creating ssh key to verify conectivity...."

sudo apt install ansible git

ssh-keygen -q -b 2048 -t rsa -N "" -C "creating SSH" -f KEY-UBUNTU

chmod 400 KEY-UBUNTU

cat KEY-UBUNTU.pub >> ~/.ssh/authorized_keys

git clone https://github.com/failoverbodev/failoverbo.nextcloud.git

ansible -i hosts -m ping all
