# My Dotfiles

This repo is to hold the dot files for the linux WM I have tried out

## Table of Contents

- Qtile
  - Qtile Dependencies
  - Qtile Keybindings
- Hyprland
  - Hyprland Dependencies
  - Hyprland Keybindings
- License

## Qtile

### Qtile Dependencies

To run this Qtile setup, you'll need:

- Qtile
- Rofi
- feh
- picom (with config at ~/.config/picom/picom.conf)
- JetBrainsMono Nerd Font
- xrandr

Install these via your package manager (e.g., `sudo pacman -S qtile rofi feh picom xorg-xrandr ttf-jetbrains-mono-nerd`).

### Qtile Keybindings

Mod refers to the Super (Windows) key.

| Keybinding                           | Description                        |
| ------------------------------------- | ---------------------------------- |
| Mod + Left/Right/Down/Up              | Move focus                         |
| Mod + Shift + Left/Right/Down/Up      | Move window                        |
| Mod + Control + h/l/j/k               | Grow/shrink window                 |
| Mod + d                               | Launch Rofi                        |
| Mod + Return                          | Launch terminal                    |
| Mod + Tab                             | Toggle layouts                     |
| Mod + q                               | Kill focused window                |
| Mod + f                               | Toggle fullscreen                  |
| Mod + t                               | Toggle floating                    |
| Mod + Control + r                     | Reload Qtile config                |
| Mod + Control + q                     | Shutdown Qtile                     |
| Mod + [1-9]                           | Switch to workspace                |
| Mod + Shift + [1-9]                   | Move window to workspace & switch  |

## qtile desktop
**<img width="1920" height="1080" alt="image (1)" src="https://github.com/user-attachments/assets/033c96d5-9de2-499a-96ad-c9b80b695113" />**

## Hyprland

Here's my Hyprland dotfiles, I didn't enjoy the Wayland experience, too many bugs.

### Hyprland Dependencies

Before you begin, ensure you have the following installed on your system:

- Hyprland
- Waybar
- Kitty
- Dolphin
- Wofi
- Swww
- Flameshot
- wpctl (for audio control, part of PipeWire)
- brightnessctl (for screen brightness control)
- playerctl (for media player control)
- grep, awk, free (standard Linux utilities)
- JetBrainsMono Nerd Font (or your preferred Nerd Font)

### Hyprland Keybindings

My Hyprland configuration uses the SUPER key ($mainMod) as the main modifier.

| Keybinding                           | Action                                         | Description                              |
| ------------------------------------- | --------------------------------------------- | ---------------------------------------- |
| $mainMod + F                          | fullscreen                                    | Toggles fullscreen for the active window |
| $mainMod + SPACE                      | exec wofi --show drun                        | Launches Wofi in drun mode               |
| $mainMod + SHIFT + Up                 | resizeactive 0 10                             | Resizes active window height by +10      |
| $mainMod + SHIFT + Down               | resizeactive 0 -10                            | Resizes active window height by -10      |
| $mainMod + SHIFT + Left               | resizeactive -10 0                           | Resizes active window width by -10       |
| $mainMod + SHIFT + Right              | resizeactive 10 0                            | Resizes active window width by +10       |

## License

This project is open-source under the MIT License.
