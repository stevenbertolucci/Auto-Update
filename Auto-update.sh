#!/bin/bash

# Replace the name of the 'your_path_to_the_password_file_goes_here' text below with the name of the file that contains your password
PASSWORD_FILE="your_path_to_the_password_file_goes_here.txt"

# Check if the password file exists
if [ ! -f "$PASSWORD_FILE" ]; then
    echo "Error: Password file does not exist. Please use the correct file path."
    sleep 3
    exit 1
fi

# Read the password from the file
PASSWORD=$(cat "$PASSWORD_FILE")

# Update and upgrade the system
gnome-terminal -- bash -c "echo $PASSWORD | sudo -S apt update && sudo apt upgrade -y; exec bash"
