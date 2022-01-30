#!/bin/bash

# Install Python3.9 and create symbolic links
sudo yum install -y python39
sudo ln -sf /usr/bin/python3.9 /usr/bin/python
sudo ln -sf /usr/bin/pip3.9 /usr/bin/pip
pip install --upgrade pip

# Install Ansible
pip install ansible
pip install pywinrm

# Install Git
sudo yum install -y git

# Create SSH keys
ssh-keygen -N '' -f ~/.ssh/id_rsa <<< y
cat .ssh/id_rsa.pub

# Create /etc/hosts entries

sudo tee -a /etc/hosts << END
192.168.1.101 nomad1
192.168.1.102 nomad2
192.168.1.103 nomad3
192.168.1.201 winserver
END

# Install unzip
sudo yum install -y unzip