#!/bin/bash

# Read MySQL credentials from .cnf file
while IFS= read -r line; do
  export "$line"
done < mysql.cnf

# Display the MySQL credentials (optional)
echo "MySQL user: $user"
echo "MySQL password: $password"

# Add the MySQL credentials to /etc/environment
echo "DB_HOST=\"$host\"" | sudo tee -a /etc/environment
echo "DB_USER=\"$user\"" | sudo tee -a /etc/environment
echo "DB_PASSWORD=\"$password\"" | sudo tee -a /etc/environment
echo "DB_DATABASE=\"$database\"" | sudo tee -a /etc/environment

# Source the /etc/environment file to make the variables available in the current session
source /etc/environment

# Display the exported MySQL credentials (optional)
echo "DB_HOST is now set to: $DB_HOST"
echo "DB_USER is now set to: $DB_USER"
echo "DB_PASSWORD is now set to: $DB_PASSWORD"
echo "DB_DATABASE is now set to: $DB_DATABASE"
