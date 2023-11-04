#!/bin/bash

TARGET_DIRECTORY="/home/SamLProgrammer/church_billboard/front"
REPO_URL="https://SamLProgrammer:${TOKEN}@github.com/SamLProgrammer/Church-Billboard-Front-Server.git"

cd "$TARGET_DIRECTORY"
git clone $REPO_URL

cd "Church-Billboard-Front-Server"
npm install
npm start