#!/bin/sh
#
# This script checks for available package updates on different Linux distributions.
# It is designed to be used with Polybar's 'custom/script' module.
#
# To use this, save the file and make it executable:
# chmod +x updates.sh
#
# Then, add a module to your Polybar config:
# [module/updates]
# type = custom/script
# exec = ~/.config/polybar/updates.sh # (or wherever you save it)
# tail = true
# format-prefix = " " # A distro-agnostic icon
# label = %output%
# interval = 600 # Check for updates every 10 minutes

# Check if the 'checkupdates' command (Arch Linux) exists
if command -v checkupdates > /dev/null; then
    # Get the count of available Arch updates
    count=$(checkupdates | wc -l)

    # If the count is 0, output a clean message, otherwise show the count
    if [ "$count" -gt 0 ]; then
        echo " $count" # An icon with the count
    else
        echo "" # A checkmark icon for no updates
    fi

# Check for apt-based systems (Debian, Ubuntu)
elif command -v apt-get > /dev/null; then
    # Get the count of available apt updates
    # This is a non-intrusive way to check for updates without actually installing
    count=$(apt-get --simulate dist-upgrade | grep "^Inst" | wc -l)
    
    if [ "$count" -gt 0 ]; then
        echo " $count"
    else
        echo ""
    fi

# Fallback for other systems or if no update checker is found
else
    echo "" # An error icon if no supported package manager is found
fi

