#!/bin/bash

# Replace the name of the 'your_path_to_the_password_file_goes_here' text below with the name of the file that contains your password
PASSWORD_FILE="your_path_to_the_password_file_goes_here.txt"

# Read the password from the file
PASSWORD=$(cat "$PASSWORD_FILE")

# Update and upgrade the system
gnome-terminal -- bash -c "echo $PASSWORD | sudo -S apt update && sudo apt upgrade -y; exec bash"