#!/bin/bash

# Install Python3.9 and create symbolic links
sudo yum install -y python39
sudo ln -sf /usr/bin/python3.9 /usr/bin/python
sudo ln -sf /usr/bin/pip3.9 /usr/bin/pip
sudo -u vagrant pip install --upgrade pip

# Install Ansible
sudo -u vagrant pip install ansible
sudo -u vagrant pip install pywinrm

# Install Git
sudo yum install -y git

# Create SSH keys
sudo -u vagrant ssh-keygen -N '' -f /home/vagrant/.ssh/id_rsa <<< y
cat /home/vagrant/.ssh/id_rsa.pub

# Create /etc/hosts entries
tee -a /etc/hosts << END
192.168.1.101 nomad1
192.168.1.102 nomad2
192.168.1.103 nomad3
192.168.1.201 winserver
END

# Install unzip
sudo yum install -y unzip