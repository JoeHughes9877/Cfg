#!/usr/bin/env bash

dir="$HOME/.config/polybar"
themes=(`ls --hide="launch.sh" $dir`)

launch_bar() {
    # Terminate already running bar instances
    killall -q polybar

    # Wait until the processes have been shut down
    while pgrep -u $UID -x polybar >/dev/null; do sleep 0.2; done

    # Get the primary monitor
    PRIMARY_MONITOR=$(xrandr --query | grep " primary" | cut -d" " -f1)
    MONITOR=$PRIMARY_MONITOR
    export MONITOR

    # Launch the bar based on style
    if [[ "$style" == "hack" || "$style" == "cuts" ]]; then
        polybar -q top -c "$dir/$style/config.ini" &
        polybar -q bottom -c "$dir/$style/config.ini" &
    elif [[ "$style" == "pwidgets" ]]; then
        bash "$dir"/pwidgets/launch.sh --main
    else
        polybar -q main -c "$dir/$style/config.ini" &
    fi
}

# Determine style
case "$1" in
    --material) style="material" ;;
    --shades) style="shades" ;;
    --hack) style="hack" ;;
    --docky) style="docky" ;;
    --cuts) style="cuts" ;;
    --shapes) style="shapes" ;;
    --grayblocks) style="grayblocks" ;;
    --blocks) style="blocks" ;;
    --colorblocks|"") style="colorblocks" ;;  # default
    --forest) style="forest" ;;
    --pwidgets) style="pwidgets" ;;
    --panels) style="panels" ;;
    *)
        cat <<- EOF
        Usage : launch.sh --theme

        Available Themes :
        --blocks    --colorblocks    --cuts      --docky
        --forest    --grayblocks     --hack      --material
        --panels    --pwidgets       --shades    --shapes
EOF
        exit 1
        ;;
esac

launch_bar
