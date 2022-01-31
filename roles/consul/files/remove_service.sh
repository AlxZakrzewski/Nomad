#!/bin/bash

sudo systemctl stop consul.service
sudo systemctl disable consul.service
sudo rm /etc/systemd/system/consul.service
sudo rm -rf /etc/systemd/system/consul.service
sudo rm -rf /usr/lib/systemd/system/consul.service
sudo rm -rf /usr/lib/systemd/system/consul.service
sudo systemctl daemon-reload
sudo systemctl reset-failed