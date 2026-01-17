# ~/.zshrc

# Environment variables
export EDITOR=nvim
export TERMINAL=kitty

# Shell Prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# Dotfiles working tree
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Use exa instead of ls
alias ls='exa --color=auto --icons'
alias ll='exa -lh --color=auto --icons'
alias la='exa -a --color=auto --icons'
