# Zsh Configuration

# Starship prompt
eval "$(starship init zsh)"

# Completion system
autoload -U compinit
compinit

# Plugin configuration
plugins=(git zsh-autosuggestions zsh-completions)

# Load zsh-autosuggestions
if [[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi