#!/bin/bash
source /etc/environment
exp_db_user="$DB_USER"
exp_db_password="$DB_PASSWORD"
echo "$exp_db_user"
echo "$exp_db_password"
export DB_USER="$exp_db_user"
export DB_PASSWORD="$exp_db_password"
TARGET_DIRECTORY="/home/SamLProgrammer/church_billboard/back/church_billboard_back"
cd "$TARGET_DIRECTORY"

mvn clean package -Dspring.profiles.active=production
java -jar target/church-billboard2-0.0.1-SNAPSHOT.jar --spring.profiles.active=production

