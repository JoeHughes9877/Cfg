#!/bin/bash

# Set desktop environment variable
export XDG_CURRENT_DESKTOP=Hyprland

# Start Waybar
waybar &

# Start swww and set wallpaper
swww-daemon &
sleep 1
swww img ~/Pictures/wallpaper.jpg &

# Start Flameshot
flameshot &