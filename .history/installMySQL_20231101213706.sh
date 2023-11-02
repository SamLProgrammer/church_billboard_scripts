#!/bin/bash

# Update the package repository and install mysql-server
sudo apt-get update
sudo apt-get install -y mysql-server

# Start the MySQL service
sudo service mysql start

# Check the status of the MySQL service
sudo service mysql status


echo "======================================================="
echo "MySQL Successfully Installed"
echo "======================================================="