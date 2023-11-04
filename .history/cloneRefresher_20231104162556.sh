#!/bin/bash

TARGET_DIRECTORY="/home/SamLProgrammer/church_billboard/devops"
REPO_URL="https://SamLProgrammer:${TOKEN}@github.com/SamLProgrammer/church_billboard_refresher.git"

cd "$TARGET_DIRECTORY"
git clone $REPO_URL