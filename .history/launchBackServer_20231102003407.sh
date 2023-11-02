#!/bin/bash

TARGET_DIRECTORY="/home/SamLProgrammer/church_billboard/back/church_billboard_back"
cd "$TARGET_DIRECTORY"

mvn clean package
java -jar target/church-billboard2-0.0.1-SNAPSHOT.jar

