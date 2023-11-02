TOKEN="$1"
TARGET_DIRECTORY= "/home/SamLProgrammer/church_billboard/back"
REPO_URL="https://SamLProgrammer:${TOKEN}@github.com/SamLProgrammer/church_billboard_back.git"

cd "$TARGET_DIRECTORY"
git clone $REPO_URL