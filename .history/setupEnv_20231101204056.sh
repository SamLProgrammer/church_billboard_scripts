#!/bin/bash
# Capture the content of .data and store it in a variable
data_contents=$(cat .data)

# Add the variable to /etc/environment
echo "MY_VARIABLE=\"$data_contents\"" | sudo tee -a /etc/environment

# Source the /etc/environment file to make the variable available in the current session
source /etc/environment

# Display the variable value
echo "MY_VARIABLE is now set to: $MY_VARIABLE"
