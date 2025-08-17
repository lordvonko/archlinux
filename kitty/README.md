# Kitty Terminal Configuration

High-performance terminal emulator configuration optimised for development work with GPU acceleration and STEM-friendly colour schemes.

## Features

- **GPU Acceleration**: Hardware-accelerated rendering with VSync
- **Font Ligatures**: Programming font support with enhanced readability
- **STEM Theme**: Custom colour scheme optimised for code and mathematical content
- **Session Management**: Development session with intelligent layout
- **Performance Optimised**: Minimal input delay and efficient scrollback
- **Wayland Native**: Full Wayland compositor integration

## Dependencies

```bash
# Core package
sudo pacman -S kitty

# Required font
sudo pacman -S ttf-jetbrains-mono-nerd

# Optional dependencies
sudo pacman -S python-pygments        # Syntax highlighting in scrollback
```

## Installation

1. **Copy configuration files:**
   ```bash
   cp kitty.conf ~/.config/kitty/
   cp -r sessions ~/.config/kitty/
   cp -r themes ~/.config/kitty/
   ```

2. **Restart Kitty:**
   ```bash
   kitty
   ```

## File Structure

```
kitty/
├── kitty.conf              # Main configuration
├── sessions/
│   └── development.conf     # Development session layout
└── themes/
    └── stem_dark.conf       # STEM-optimised dark theme
```

## Configuration Overview

### Performance Features
- **GPU Acceleration**: VSync and monitor synchronisation enabled
- **Minimal Latency**: Zero input delay with optimised repaint timing
- **Memory Efficient**: 50,000 line scrollback with intelligent paging
- **Wayland Optimised**: Native Wayland rendering for best performance

### Visual Features
- **Typography**: JetBrains Mono with programming ligatures
- **Transparency**: 95% opacity for compositor blur effects
- **Cursor**: Beam cursor with intelligent blinking
- **Tabs**: Minimalist tab bar with activity indicators

### Development Features
- **Session Support**: Automatic development session loading
- **Remote Control**: Socket-based control for automation
- **Shell Integration**: Enhanced shell features and completion
- **Unicode Support**: Extended symbol mapping for mathematical notation

## Key Bindings

### Clipboard
- `Ctrl+Shift+C` - Copy to clipboard
- `Ctrl+Shift+V` - Paste from clipboard
- `Shift+Insert` - Paste from selection

### Font Size
- `Ctrl+Plus` - Increase font size
- `Ctrl+Minus` - Decrease font size
- `Ctrl+0` - Reset font size

### Tab Management
- `Ctrl+Shift+T` - New tab
- `Ctrl+Shift+W` - Close tab
- `Ctrl+Shift+Right/Left` - Navigate tabs

### Window Management
- `Ctrl+Shift+N` - New window
- `Ctrl+Shift+Enter` - New window
- `Ctrl+Shift+Q` - Close window

### Sessions
- `F1` - Launch in current directory
- `F2` - Launch new tab in current directory
- `F3` - Launch new window in current directory

## Customisation

### Theme Modification
Edit `themes/stem_dark.conf` to customise colours:
```bash
# Primary colours
foreground  #e0e0e0    # Text colour
background  #1a1a1a    # Background colour
```

### Font Configuration
Modify font settings in `kitty.conf`:
```bash
font_family JetBrains Mono
font_size 11.0
```

### Performance Tuning
Adjust performance parameters:
```bash
scrollback_lines 50000          # History buffer
repaint_delay 2                 # Render timing
input_delay 0                   # Input responsiveness
```

## Sessions

### Development Session
The included development session (`sessions/development.conf`) provides:
- Single tab layout optimised for coding
- Tall layout for terminal multiplexing compatibility
- Current working directory preservation

### Creating Custom Sessions
```bash
# Create new session file
echo "new_tab ProjectName" > ~/.config/kitty/sessions/project.conf
echo "layout tall" >> ~/.config/kitty/sessions/project.conf
echo "launch --cwd=/path/to/project" >> ~/.config/kitty/sessions/project.conf

# Load session
kitty --session ~/.config/kitty/sessions/project.conf
```

## Troubleshooting

### Font Issues
```bash
# Verify font installation
fc-list | grep -i jetbrains

# Rebuild font cache
fc-cache -fv
```

### Performance Issues
```bash
# Check GPU acceleration
kitty --debug-rendering

# Monitor performance
kitty --debug-keyboard
```

### Wayland Issues
```bash
# Force Wayland backend
export KITTY_WAYLAND=1
kitty
```

## Integration Notes

- **Hyprland**: Optimised for tiling window managers
- **Shell Integration**: Works with zsh, bash, fish
- **Remote Control**: Socket at `/tmp/kitty-{pid}` for automation
- **Clipboard**: Full Wayland clipboard integration