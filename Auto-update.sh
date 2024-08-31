#!/bin/bash

# Replace the name of the 'your_path_to_the_password_file_goes_here' text below with the name of the gpg file that contains your password
# NOTE - Extension must end with .txt.gpg
PASSWORD_FILE="your_path_to_the_password_file_goes_here.txt.gpg"

# Check if the password file exists
if [ ! -f "$PASSWORD_FILE" ]; then
    echo "Error: Password file does not exist. Please use the correct file path."
    sleep 3
    exit 1
fi

# Decrypt the password from the file
PASSWORD=$(gpg --quiet --batch --decrypt "$PASSWORD_FILE")

# Update and upgrade the system
gnome-terminal -- bash -c "echo $PASSWORD | sudo -S apt update && sudo apt upgrade -y; exec bash"
