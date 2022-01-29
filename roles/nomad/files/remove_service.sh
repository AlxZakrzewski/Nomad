#!/bin/bash

sudo systemctl stop nomad.service
sudo systemctl disable nomad.service
sudo rm /etc/systemd/system/nomad.service
sudo rm /etc/systemd/system/nomad.service
sudo rm /usr/lib/systemd/system/nomad.service
sudo rm /usr/lib/systemd/system/nomad.service
sudo systemctl daemon-reload
sudo systemctl reset-failed