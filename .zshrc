# Setup zsh history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Setup zsh completion system
zstyle :compinstall filename '/Users/davidenigri/.zshrc'
autoload -Uz compinit && compinit

# Env variables
export XDG_CONFIG_HOME="$HOME/.config"  # User-specific configuration

# Plugins
source $HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Keybindings
bindkey -e
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Load starship
eval "$(starship init zsh)"
