# Arch Linux Dotfiles Collection

A curated collection of optimised configuration files for Arch Linux systems.

## Hyprland Configuration

### Files
- `hyprland.conf` - Main Hyprland compositor configuration
- `envway.conf` - Environment variables for NVIDIA/Wayland setup

### Description
High-performance Hyprland configuration optimised for gaming and productivity. Features GPU-accelerated animations, blur effects, and VRR/G-SYNC support.

### Installation
```bash
# Copy to Hyprland config directory
cp hyprland.conf ~/.config/hypr/hyprland.conf
cp envway.conf ~/.config/hypr/envway.conf
```

### Dependencies
- hyprland
- hyprpaper
- waybar
- ghostty (terminal)
- thunar (file manager)
- fuzzel (application launcher)
- grim + slurp + swappy (screenshots)
- wpctl (audio control)

### Configuration Notes
- Optimised for NVIDIA GPUs with Wayland
- Requires high refresh rate display for best experience
- VRR/G-SYNC enabled by default
- Terminal swallowing configured for ghostty
- Discord/Vesktop automatically assigned to workspace 2

### Key Bindings
- `SUPER + Q` - Open terminal
- `SUPER + E` - Open file manager
- `SUPER + SPACE` - Application launcher
- `SUPER + X` - Close active window
- `SUPER + V` - Toggle floating mode
- `SUPER + H/J/K/L` - Move focus (Vim-style)
- `Print` - Screenshot with selection tool

## Waybar Configuration

### Files
- `config.jsonc` - Waybar module configuration
- `style.css` - Custom styling and colour scheme

### Description
Minimalist status bar configuration for Hyprland with clean aesthetics and essential system monitoring. Features CPU, memory, GPU utilisation, audio control, and workspace management.

### Installation
```bash
# Copy to Waybar config directory
cp waybar/config.jsonc ~/.config/waybar/
cp waybar/style.css ~/.config/waybar/
```

### Dependencies
- waybar
- pulseaudio + pactl (audio control)
- nvidia-utils (GPU monitoring, NVIDIA only)
- ttf-jetbrains-mono-nerd (font)

### Configuration Notes
- Optimised for Hyprland workspace integration
- Monochromatic system tray icons for clean appearance
- GPU monitoring configured for NVIDIA (customisable for AMD)
- 24-hour time format
- Minimal tooltip usage for clean interface

## Kitty Terminal Configuration

### Files
- `kitty.conf` - Main terminal configuration
- `sessions/development.conf` - Development session layout
- `themes/stem_dark.conf` - STEM-optimised colour scheme

### Description
High-performance terminal emulator configuration optimised for development work with GPU acceleration, programming ligatures, and STEM-friendly colour schemes.

### Installation
```bash
# Copy to Kitty config directory
cp kitty/kitty.conf ~/.config/kitty/
cp -r kitty/sessions ~/.config/kitty/
cp -r kitty/themes ~/.config/kitty/
```

### Dependencies
- kitty
- ttf-jetbrains-mono-nerd (font)
- python-pygments (syntax highlighting, optional)

### Configuration Notes
- GPU-accelerated rendering with VSync optimisation
- Programming ligatures and enhanced font features
- Wayland-native with transparency support
- Session management for development workflows
- Extended Unicode support for mathematical symbols