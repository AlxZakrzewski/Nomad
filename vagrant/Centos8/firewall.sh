#!/bin/bash

# Add firewall rules

# Nomad
sudo firewall-cmd --zone=public --permanent --add-port={4646,4647,4648}/tcp
sudo firewall-cmd --zone=public --permanent --add-port=4648/udp
# Consul
sudo firewall-cmd --zone=public --permanent --add-port={8300,8301,8302,8500,8600}/tcp
sudo firewall-cmd --zone=public --permanent --add-port=21000-21255/tcp
sudo firewall-cmd --zone=public --permanent --add-port={8301,8302,8600}/udp

sudo firewall-cmd --reload