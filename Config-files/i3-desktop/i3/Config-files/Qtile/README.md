# My Dotfiles Qtile

This repo holds my current **Qtile configuration**, set up for a clean and efficient tiling window manager experience.

I'm using Qtile now, but I plan an eventual switch to **Hyprland** for my Wayland setup. This repo will get updated when that transition happens.

---

## Current Setup: Qtile

### Features

* **Custom Keybindings**: Efficient controls for windows, apps, and system.
* **Dynamic Top Bar**: Displays workspaces, active window name, clock, and system tray.
* **Rofi Integration**: Quick app launching via `rofi -show drun`.
* **Auto-Startup**: `autostart.sh` sets up monitors, wallpaper, and starts `picom`.
* **Themed Layouts**: Custom colors and margins for `Columns` and `Tile` layouts.

### Dependencies

To run this Qtile setup, you'll need:

* **Qtile**
* **Rofi**
* **feh**
* **picom** (with config at `~/.config/picom/picom.conf`)
* **JetBrainsMono Nerd Font**
* `xrandr`

Install these via your package manager (e.g., `sudo pacman -S qtile rofi feh picom xorg-xrandr ttf-jetbrains-mono-nerd`).

### Installation

1.  **Clone this repo**:
    ```bash
    git clone [https://github.com/JoeHughes9877.git](https://github.com/JoeHughes9877/Qtile-config-files.git) ~/.config/qtile
    ```
2.  **Set up `autostart.sh`**:
    Copy the example and make it executable:
    ```bash
    cp ~/.config/qtile/autostart.sh.example ~/.config/qtile/autostart.sh
    chmod +x ~/.config/qtile/autostart.sh
    ```
    **Edit `~/.config/qtile/autostart.sh`** for your monitor setup and wallpaper path.
3.  **Log in**: Select "Qtile" from your display manager.

### Keybindings

`Mod` refers to the Super (Windows) key.

| Keybinding | Description |
| :----------------------------- | :------------------------------------------------ |
| `Mod + Left/Right/Down/Up` | Move focus |
| `Mod + Shift + Left/Right/Down/Up` | Move window |
| `Mod + Control + h/l/j/k` | Grow/shrink window |
| `Mod + d` | Launch Rofi |
| `Mod + Return` | Launch terminal |
| `Mod + Tab` | Toggle layouts |
| `Mod + q` | Kill focused window |
| `Mod + f` | Toggle fullscreen |
| `Mod + t` | Toggle floating |
| `Mod + Control + r` | Reload Qtile config |
| `Mod + Control + q` | Shutdown Qtile |
| `Mod + [1-9]` | Switch to workspace |
| `Mod + Shift + [1-9]` | Move window to workspace & switch |

---

### Desktop Image (Qtile)
<img width="1920" height="1080" alt="image (1)" src="https://github.com/user-attachments/assets/033c96d5-9de2-499a-96ad-c9b80b695113" />



---

## Future: Hyprland

I'll be moving to **Hyprland** for a native Wayland experience. This section will be updated with Hyprland configs and details when I make the switch.

---

## License

This project is open-source under the [MIT License](LICENSE).
