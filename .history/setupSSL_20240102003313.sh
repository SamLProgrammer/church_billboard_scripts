#!/bin/bash
sudo apt update
sudo apt install python3 python3-venv libaugeas0 -y
sudo python3 -m venv /opt/certbot/
sudo /opt/certbot/bin/pip install --upgrade pip