#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/colorblocks"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch a bar on each connected monitor
for m in DP-2 HDMI-2; do
    MONITOR=$m polybar -q main -c "$DIR"/config.ini &
done
