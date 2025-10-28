#!/bin/bash
# Wait for display to be ready
sleep 1

# Kill existing picom instances
killall -q picom

# Wait until the processes have been shut down
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done

# Start picom
picom --config ~/.config/picom/picom.conf -b --log-file /tmp/picom.log

echo "Picom launched..."