#!/bin/bash

# Add firewall rules

# Nomad
sudo firewall-cmd --zone=public --permanent --add-port=4646/tcp
sudo firewall-cmd --zone=public --permanent --add-port=4647/tcp
sudo firewall-cmd --zone=public --permanent --add-port=4648/tcp
sudo firewall-cmd --zone=public --permanent --add-port=4648/udp
# Consul
sudo firewall-cmd --zone=public --permanent --add-port=8600/tcp
sudo firewall-cmd --zone=public --permanent --add-port=8600/udp
sudo firewall-cmd --zone=public --permanent --add-port=8500/tcp
sudo firewall-cmd --zone=public --permanent --add-port=8301/tcp
sudo firewall-cmd --zone=public --permanent --add-port=8301/udp
sudo firewall-cmd --zone=public --permanent --add-port=8302/tcp
sudo firewall-cmd --zone=public --permanent --add-port=8302/udp
sudo firewall-cmd --zone=public --permanent --add-port=8300/tcp
sudo firewall-cmd --zone=public --permanent --add-port=21000-21255/tcp

sudo firewall-cmd --reload