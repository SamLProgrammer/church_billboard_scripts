#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <git_username> <git_token>"
    exit 1
fi

git_username="$1"
git_token="$2"

# Create the Git credentials file
cat > ~/.git-credentials <<EOF
https://${git_username}:${git_token}@github.com
EOF

# Configure Git to use the 'store' credential helper
git config --global credential.helper store

echo "Git credentials set up successfully."
