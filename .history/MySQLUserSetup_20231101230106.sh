#!/bin/bash

# Check if the MySQL server is running
if sudo service mysql status | grep "active (running)"; then
  echo "MySQL server is running."
else
  echo "MySQL server is not running. Starting it..."
  sudo service mysql start
fi

# Use the environment variables DB_USER and DB_PASSWORD
db_user="$DB_USER"
db_password="$DB_PASSWORD"

# Check if DB_USER and DB_PASSWORD are set
if [ -z "$db_user" ] || [ -z "$db_password" ]; then
  echo "DB_USER and/or DB_PASSWORD are not set. Please set these variables and run the script again."
  exit 1
fi

# Execute SQL commands to create a MySQL user with privileges to all databases
mysql -uroot <<EOF
CREATE USER '$db_user'@'localhost' IDENTIFIED BY '$db_password';
GRANT ALL PRIVILEGES ON *.* TO '$db_user'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF


echo "MySQL user '$db_user' with privileges to all databases has been created."

# Restart the MySQL server for the changes to take effect
sudo service mysql restart

echo "MySQL server has been restarted."
