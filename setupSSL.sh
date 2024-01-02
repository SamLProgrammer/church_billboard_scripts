#!/bin/bash
sudo apt update
sudo apt install python3 python3-venv libaugeas0 -y
sudo python3 -m venv /opt/certbot/
sudo /opt/certbot/bin/pip install --upgrade pip
sudo /opt/certbot/bin/pip install certbot certbot-nginx
sudo ln -s /opt/certbot/bin/certbot /usr/bin/certbot
sudo certbot --nginx --non-interactive --agree-tos --email samuel.lopez@uptc.edu.co --domains "mysqlconnectornoderaged.com,app.mysqlconnectornoderaged.com,www.mysqlconnectornoderaged.com"
echo "0 0,12 * * * root /opt/certbot/bin/python -c 'import random; import time; time.sleep(random.random() * 3600)' && sudo certbot renew -q" | sudo tee -a /etc/crontab > /dev/null
