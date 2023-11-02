
#!/bin/bash

# Read Git credentials from the .cnf file
source git_credentials.cnf

# Create the Git credentials file
cat > ~/.git-credentials <<EOF
https://${git_username}:${git_password}@github.com
EOF

# Configure Git to use the 'store' credential helper
git config --global credential.helper store

echo "Git credentials set up successfully."
