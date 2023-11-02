#!/bin/bash

# Read MySQL credentials from .cnf file
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <git_username> <git_token>"
    exit 1
fi

user="$1"
password="$2"

# Display the MySQL credentials (optional)
echo "MySQL user: $user"
echo "MySQL password: $password"

# Add the MySQL credentials to /etc/environment
echo "DB_USER=\"$user\"" | sudo tee -a /etc/environment
echo "DB_PASSWORD=\"$password\"" | sudo tee -a /etc/environment

# Source the /etc/environment file to make the variables available in the current session
source /etc/environment

# Display the exported MySQL credentials (optional)
echo "DB_USER is now set to: $DB_USER"
echo "DB_PASSWORD is now set to: $DB_PASSWORD"
