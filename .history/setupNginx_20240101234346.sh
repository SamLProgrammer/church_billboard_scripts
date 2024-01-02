#!/bin/bash
mv /home/SamLProgrammer/church_billboard/initial_scripts/church_billboard_scripts/church_billboard /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/church_billboard /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl start nginx