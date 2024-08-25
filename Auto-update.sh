#!/bin/bash

# Replace the name of the 'your_path_to_the_password_file_goes_here' text below with the name of the file that contains your password
PASSWORD_FILE="your_path_to_the_password_file_goes_here.txt"

# Read the password from the file
PASSWORD=$(cat "$PASSWORD_FILE")

# Update and upgrade the system
gnome-terminal -- bash -c "echo $PASSWORD | sudo -S apt update && sudo apt upgrade -y; exec bash"

# Display menu
menu() {
    echo "What do you want to do, Bud? (Pick an option below)"
    echo "1) Check disk usage"
    echo "2) List all files in the current directory"
    echo "3) Display system information"
    echo "4) Play a YouTube video"
    echo "5) Exit"
}

# Function to handle user input
handle_input() {
    case $1 in
        1)
            echo "Checking disk usage..."
            df -h
            ;;
        2)
            echo "Listing all files in the current directory..."
            ls -al
            ;;
        3)
            echo "Displaying system information..."
            uname -a
            ;;
        4)
            echo "Opening browser to play YouTube video..."
            YOUTUBE_URL="https://www.youtube.com/watch?v=nnkyInAj6Z8"
            xdg-open "$YOUTUBE_URL"
            ;;
        5)
            echo "Exiting. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
}

# Menu loop
while true; do
    menu
    read -p "Enter your choice [1-5]: " choice
    handle_input $choice
    echo
done