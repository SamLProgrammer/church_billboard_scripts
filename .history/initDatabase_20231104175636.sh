#!/bin/bash

# Use the environment variables for MySQL username and password
db_user="$DB_USER"
db_password="$DB_PASSWORD"

# Check if DB_USER and DB_PASSWORD are set
if [ -z "$db_user" ] || [ -z "$db_password" ]; then
  echo "DB_USER and/or DB_PASSWORD are not set. Please set these variables and run the script again."
  exit 1
fi

# Define the database name and SQL file path
db_name="church_billboard"
sql_file="/home/abcd.sql"

# Check if the SQL file exists
if [ ! -f "$sql_file" ]; then
  echo "SQL file '$sql_file' not found in /home folder."
  exit 1
fi

# MySQL commands to create the database and import data from the SQL file
mysql -u"$db_user" -p"$db_password" <<EOF
CREATE DATABASE IF NOT EXISTS $db_name;
USE $db_name;
source $sql_file;
EOF

echo "MySQL database '$db_name' has been created and data from '$sql_file' has been imported."
