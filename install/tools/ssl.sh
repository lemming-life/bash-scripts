#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -q -y openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
