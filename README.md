# My Dotfiles

This repository contains the dotfiles for the Linux window managers (WM) I've tried out.

## Table of Contents

- [Qtile](#qtile)
  - [Qtile Dependencies](#qtile-dependencies)
  - [Qtile Installation](#qtile-installation)
  - [Qtile Keybindings](#qtile-keybindings)
- [Hyprland](#hyprland)
  - [Hyprland Dependencies](#hyprland-dependencies)
  - [Hyprland Installation](#hyprland-installation)
  - [Hyprland Keybindings](#hyprland-keybindings)

---

## Qtile

### Qtile Dependencies

To run this Qtile setup, you'll need:

- `Qtile`
- `Rofi`
- `feh`
- `picom` (with config at `~/.config/picom/picom.conf`)
- `JetBrainsMono Nerd Font`
- `xrandr`

Install these via your package manager:

```bash
sudo pacman -S qtile rofi feh picom xorg-xrandr ttf-jetbrains-mono-nerd

Qtile Installation

    Clone this repo:

git clone https://github.com/JoeHughes9877/Qtile-config-files.git ~/.config/qtile

Set up autostart.sh:

    Copy the example and make it executable:

    cp ~/.config/qtile/autostart.sh.example ~/.config/qtile/autostart.sh
    chmod +x ~/.config/qtile/autostart.sh

        Edit ~/.config/qtile/autostart.sh for your monitor setup and wallpaper path.

    Log in and select "Qtile" from your display manager.

Qtile Keybindings

Mod refers to the Super (Windows) key.
Keybinding	Description
Mod + Left/Right/Down/Up	Move focus
Mod + Shift + Left/Right/Down/Up	Move window
Mod + Control + h/l/j/k	Grow/shrink window
Mod + d	Launch Rofi
Mod + Return	Launch terminal
Mod + Tab	Toggle layouts
Mod + q	Kill focused window
Mod + f	Toggle fullscreen
Mod + t	Toggle floating
Mod + Control + r	Reload Qtile config
Mod + Control + q	Shutdown Qtile
Mod + [1-9]	Switch to workspace
Mod + Shift + [1-9]	Move window to workspace & switch
Hyprland
Hyprland Dependencies

Before you begin, ensure you have the following installed on your system:

    Hyprland

    Waybar

    Kitty

    Dolphin

    Wofi

    Swww

    Flameshot

    wpctl (for audio control, part of PipeWire)

    brightnessctl (for screen brightness control)

    playerctl (for media player control)

    grep, awk, free (standard Linux utilities)

    JetBrainsMono Nerd Font (or your preferred Nerd Font)

Hyprland Installation
Cloning the Repository

git clone https://github.com/your-username/your-hyprland-dotfiles.git ~/.config/hypr-dotfiles

Configuration Files

This repository typically contains the following key configuration files. You will need to symlink or copy these to their respective locations:

    hyprland.conf: The main Hyprland configuration file.

cp ~/.config/hypr-dotfiles/hyprland.conf ~/.config/hypr/hyprland.conf

autoscript.sh: An autostart script for various applications.

cp ~/.config/hypr-dotfiles/autoscript.sh ~/.config/hypr/autoscript.sh
chmod +x ~/.config/hypr/autoscript.sh

config (Waybar): The Waybar configuration file.

cp ~/.config/hypr-dotfiles/config ~/.config/waybar/config

style.css (Waybar): The Waybar styling file.

    cp ~/.config/hypr-dotfiles/style.css ~/.config/waybar/style.css

Note: Make sure to adjust paths in hyprland.conf and autoscript.sh if you place them in different locations. Specifically, the exec-once = ~/.config/hypr/autoscript.sh line in hyprland.conf should point to the correct location of your autoscript.sh. Also, ensure your wallpaper path in autoscript.sh (~/Pictures/wallpaper.jpg) is correct.
Hyprland Keybindings

My Hyprland configuration uses the SUPER key ($mainMod) as the main modifier.
Keybinding	Action	Description
$mainMod + F	fullscreen	Toggles fullscreen for the active window
$mainMod + SPACE	exec wofi --show drun	Launches Wofi in drun mode
$mainMod + SHIFT + Up	resizeactive 0 10	Resizes active window height by +10
$mainMod + SHIFT + Down	resizeactive 0 -10	Resizes active window height by -10
$mainMod + SHIFT + Left	resizeactive -10 0	Resizes active window width by -10
$mainMod + SHIFT + Right	resizeactive 10 0	Resizes active window width by +10
