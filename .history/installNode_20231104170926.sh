#!/bin/bash

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Load nvm without re-opening the terminal
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install the LTS Node.js version
nvm install --lts

# Use the LTS Node.js version
nvm use --lts

# Create a symbolic link for node
sudo ln -s "$(which node)" /usr/bin/node
# Create a symbolic link for npm
sudo ln -s "$(which npm)" /usr/bin/npm

echo "======================================================="
echo "Node Successfully Installed"
echo "======================================================="