#!/bin/bash
source /etc/environment
export DB_USER="$DB_USER"
export DB_PASSWORD="$DB_PASSWORD"
TARGET_DIRECTORY="/home/SamLProgrammer/church_billboard/back/church_billboard_back"
cd "$TARGET_DIRECTORY"

mvn clean package -Dspring.profiles.active=production
java -jar target/church-billboard2-0.0.1-SNAPSHOT.jar --spring.profiles.active=production

