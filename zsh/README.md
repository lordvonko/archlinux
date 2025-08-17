# Zsh Configuration

Minimal Zsh configuration optimised for development with Starship prompt integration and essential plugins.

## Features

- **Starship Integration**: Modern, fast prompt with Git integration
- **Auto-suggestions**: Intelligent command completion based on history
- **Enhanced Completions**: Comprehensive completion system
- **Minimal Setup**: Clean configuration without bloat
- **Plugin Support**: Essential plugin framework ready

## Dependencies

```bash
# Core shell
sudo pacman -S zsh

# Prompt
sudo pacman -S starship

# Plugins
sudo pacman -S zsh-autosuggestions zsh-completions

# Optional but recommended
sudo pacman -S zsh-syntax-highlighting
```

## Installation

1. **Copy configuration:**
   ```bash
   cp zsh/.zshrc ~/.zshrc
   ```

2. **Copy Starship configuration:**
   ```bash
   cp starship.toml ~/.config/starship.toml
   ```

3. **Set Zsh as default shell:**
   ```bash
   chsh -s /bin/zsh
   ```

4. **Restart terminal or source configuration:**
   ```bash
   source ~/.zshrc
   ```

## Configuration Overview

### Core Features
- **Completion System**: Auto-loaded with `compinit`
- **Plugin Framework**: Modular plugin loading system
- **Starship Prompt**: Lambda (λ) symbol with Git integration
- **Auto-suggestions**: Command history-based suggestions

### Plugin Configuration
The configuration includes support for:
- `git` - Git command aliases and completion
- `zsh-autosuggestions` - Command suggestions from history
- `zsh-completions` - Additional completion definitions

### Starship Prompt Features
- **Directory**: Current path with repository truncation
- **Git Status**: Branch, status indicators, and ahead/behind counts
- **Language Detection**: Python, Node.js, Rust, Go, Java, C
- **Command Duration**: Execution time for long-running commands
- **Error Indication**: Colour-coded prompt based on exit status

## Customisation

### Adding Plugins
To add new plugins, modify the plugins array in `.zshrc`:
```bash
plugins=(git zsh-autosuggestions zsh-completions new-plugin)
```

### Starship Customisation
Edit `~/.config/starship.toml` to customise the prompt:
```toml
[character]
success_symbol = "[➜](bold green)"
error_symbol = "[➜](bold red)"
```

### Auto-suggestions Styling
Add to `.zshrc` for custom auto-suggestion colours:
```bash
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6c7086"
```

## Advanced Configuration

### History Settings
Add to `.zshrc` for enhanced history:
```bash
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
```

### Key Bindings
Add custom key bindings:
```bash
# Vim-style navigation
bindkey -v

# Search history
bindkey "^R" history-incremental-search-backward
```

### Aliases
Add common aliases:
```bash
alias ls='ls --colour=auto'
alias ll='ls -la --colour=auto'
alias grep='grep --colour=auto'
```

## Troubleshooting

### Plugins Not Loading
```bash
# Check plugin installation
ls /usr/share/zsh/plugins/

# Verify plugin source paths
echo $fpath
```

### Starship Not Appearing
```bash
# Check Starship installation
starship --version

# Test configuration
starship config
```

### Completions Not Working
```bash
# Rebuild completion cache
rm ~/.zcompdump*
compinit
```

### Performance Issues
```bash
# Profile startup time
time zsh -i -c exit

# Check for slow plugins
zsh -xvs
```

## Integration Notes

- **Terminal Compatibility**: Works with any terminal emulator
- **Tmux Integration**: Full support for terminal multiplexers
- **SSH Compatibility**: Maintains functionality over SSH connections
- **Plugin Ecosystem**: Compatible with Oh My Zsh and Prezto plugins