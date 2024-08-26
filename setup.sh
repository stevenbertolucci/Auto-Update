#!/bin/bash

# Define paths
SCRIPT_NAME="Auto-update.sh"
ICON_NAME="django.png"
DESKTOP_FILE="$HOME/Desktop/Auto-Update.desktop"

# Make the main script executable
chmod +x "$SCRIPT_NAME"

# Create a .desktop file for the desktop shortcut
cat << EOF > "$DESKTOP_FILE"
[Desktop Entry]
Version=1.0
Name=Your Program
Comment=Launch Your Program
Exec=$(pwd)/$SCRIPT_NAME
Icon=$(pwd)/$ICON_NAME
Terminal=true
Type=Application
EOF

# Make the .desktop file executable
chmod +x "$DESKTOP_FILE"

echo "Setup complete! You can now run Auto-Update from the desktop icon. Enjoy, my friend..."