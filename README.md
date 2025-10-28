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
- Wofi
- JetBrainsMono Nerd Font

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

## hyperland desktop
<img width="2547" height="1401" alt="T1mZziD" src="https://github.com/user-attachments/assets/36aaee4e-9693-48e7-a42d-efca3b32ce66" />

## I3-Desktop

My current i3 config for my desktop

### I3 Dependencies

Before you begin, ensure you have the following installed on your system:

- polybar
- alacritty
- Rofi
- JetBrainsMono Nerd Font

### I3 Keybindings

My i3 configuration uses the SUPER key ($mainMod) as the main modifier.

| Keybinding        | Action                          | Description                       |
|------------------|---------------------------------|-----------------------------------|
| $mod+f           | fullscreen toggle               | Toggles fullscreen for the active window |
| $mod+space       | exec --no-startup-id rofi -show run | Launches Rofi in run mode        |
| $mod+Shift+Up    | move up                          | Moves the active window up        |
| $mod+Shift+Down  | move down                        | Moves the active window down      |
| $mod+Shift+Left  | move left                        | Moves the active window left      |
| $mod+Shift+Right | move right                       | Moves the active window right     |
| $mod+Shift+W     | change wallpaper                 | Flips through image in /home/usr/Pictures/wallpapers/     |


## I3 desktop
<img width="2547" height="1401" alt="i3-desktop" src="https://github.com/user-attachments/assets/1cb3c944-4112-425a-8ea3-56d2f0f623a3" />


## I3-Laptop
My current i3 config for my desktop

### I3 Dependencies
Before you begin, ensure you have the following installed on your system:

- polybar
- alacritty
- Rofi

### I3 Keybindings
My I3 configuration uses the SUPER key ($mainMod) as the main modifier.

| Keybinding        | Action                          | Description                       |
|------------------|---------------------------------|-----------------------------------|
| $mod+f           | fullscreen toggle               | Toggles fullscreen for the active window |
| $mod+space       | exec --no-startup-id rofi -show run | Launches Rofi in run mode        |
| $mod+Shift+Up    | move up                          | Moves the active window up        |
| $mod+Shift+Down  | move down                        | Moves the active window down      |
| $mod+Shift+Left  | move left                        | Moves the active window left      |
| $mod+Shift+Right | move right                       | Moves the active window right     |


## I3 Laptop
<img  width="2547" height="1401" alt="i3-desktop" src="https://github.com/user-attachments/assets/e4eb5177-8b8f-4251-9386-deda6eae2d10" />

## License
This project is open-source under the MIT License.
