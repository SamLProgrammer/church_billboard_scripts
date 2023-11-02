#!/bin/bash

# Use the environment variables for MySQL username and password
db_user="$DB_USER"
db_password="$DB_PASSWORD"

# Check if DB_USER and DB_PASSWORD are set
if [ -z "$db_user" ] || [ -z "$db_password" ]; then
  echo "DB_USER and/or DB_PASSWORD are not set. Please set these variables and run the script again."
  exit 1
fi

# MySQL commands to create the database
mysql -u"$db_user" -p"$db_password" <<EOF
CREATE DATABASE church_billboard;
EOF

echo "MySQL database 'church_billboard' has been created."
