#!/bin/sh

# Set monitor layout
xrandr --output HDMI-A-0 --mode 1920x1080 --pos 2560x48 --rotate normal \
       --output DisplayPort-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal \
       --output DisplayPort-1 --off \
       --output HDMI-A-1 --off \
       --output HDMI-A-1-2 --off \
       --output DisplayPort-1-2 --off \
       --output DisplayPort-1-3 --off \
       --output DisplayPort-1-4 --off

# Set wallpaper
feh --bg-scale /home/joe/Downloads/pictures/wallpaper.jpg &

# Start compositor
picom --config ~/.config/picom/picom.conf &

#polybar
#killall -q polybar
#polybar example &

xset -dpms
xset s off
xset s noblank
