# Waybar Configuration

Minimalist status bar configuration for Hyprland with clean aesthetics and essential system monitoring.

## Features

- **Workspace Management**: Hyprland workspace integration with numbered indicators
- **System Monitoring**: CPU usage, memory usage, and GPU utilisation (NVIDIA)
- **Audio Control**: PulseAudio volume display with mute toggle
- **Network Status**: WiFi/Ethernet connection indicator
- **System Tray**: Monochromatic icon styling for clean appearance
- **Time Display**: 24-hour format clock

## Dependencies

```bash
# Core package
sudo pacman -S waybar

# Optional dependencies for full functionality
sudo pacman -S pulseaudio pactl        # Audio control
sudo pacman -S nvidia-utils            # GPU monitoring (NVIDIA only)
```

## Installation

1. **Copy configuration files:**
   ```bash
   cp config.jsonc ~/.config/waybar/
   cp style.css ~/.config/waybar/
   ```

2. **Restart Waybar:**
   ```bash
   killall waybar && waybar &
   ```

## Configuration Overview

### Modules Layout
- **Left**: Hyprland workspaces (1-5)
- **Centre**: Clock (HH:MM format)
- **Right**: CPU, Memory, GPU, Audio, Network, System Tray

### Styling
- **Theme**: Dark minimal with subtle hover effects
- **Font**: JetBrainsMono Nerd Font (11px)
- **Colours**: Grayscale palette with #c0c0c0 highlights
- **Tray Icons**: Monochromatic with brightness filtering

## Customisation

### Adding Workspaces
Edit `persistent-workspaces` in `config.jsonc`:
```json
"persistent-workspaces": {
  "1": [], "2": [], "3": [], "4": [], "5": [], "6": []
}
```

### GPU Monitoring
The configuration includes NVIDIA GPU monitoring. For AMD GPUs, replace the exec command:
```json
"exec": "radeontop -d 1 -l 1 | grep 'gpu' | awk '{print $3}' | sed 's/%//' || echo '0'"
```

### Colour Scheme
Modify colour values in `style.css`:
- Primary text: `#c0c0c0`
- Secondary text: `#999999`
- Background: `#1a1a1a`
- Accents: `#333333`

## Troubleshooting

### Waybar Not Starting
```bash
# Check for configuration errors
waybar --log-level debug

# Validate JSON syntax
jq . ~/.config/waybar/config.jsonc
```

### Missing Icons
Ensure Nerd Font is installed:
```bash
sudo pacman -S ttf-jetbrains-mono-nerd
```

### GPU Module Not Working
For non-NVIDIA systems, disable the GPU module or modify the exec command accordingly.