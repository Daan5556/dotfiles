# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

. "$HOME/.local/share/../bin/env"

# Dotfiles aliases
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias lazydotfiles='lazygit --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# Mise aliases
alias mr='mise run'
