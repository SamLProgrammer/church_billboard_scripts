#!/bin/bash
# mv /home/SamLProgrammer/church_billboard/initial_scripts/ABST-VPS-Initial-Installation-Bashes/church_billboard /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/church_billboard /etc/nginx/sites-enabled/
sudo systemctl start nginx
