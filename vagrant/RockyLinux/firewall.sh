#!/bin/bash

# Add firewall rules

systemctl start firewalld.service
sleep 2
# Nomad
firewall-cmd --zone=public --permanent --add-port={4646,4647,4648}/tcp
firewall-cmd --zone=public --permanent --add-port=4648/udp
# Consul
firewall-cmd --zone=public --permanent --add-port={8300,8301,8302,8500,8600}/tcp
firewall-cmd --zone=public --permanent --add-port=21000-21255/tcp
firewall-cmd --zone=public --permanent --add-port={8301,8302,8600}/udp

firewall-cmd --reload