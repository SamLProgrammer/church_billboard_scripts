#!/bin/bash

TARGET_DIRECTORY="/home/SamLProgrammer/church_billboard/front"
REPO_URL="https://SamLProgrammer:${TOKEN}@github.com/SamLProgrammer/church_billboard_front_app.git"

cd "$TARGET_DIRECTORY"
git clone $REPO_URL