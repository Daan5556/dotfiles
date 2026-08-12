# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
# /etc/omarchy.conf is written by omarchy-dev-link. When absent, force the
# package default instead of preserving a stale inherited dev-link value before
# we decide which rc file to source.
if [[ -f /etc/omarchy.conf ]]; then
  source /etc/omarchy.conf
  export OMARCHY_PATH="${OMARCHY_PATH:-/usr/share/omarchy}"
else
  export OMARCHY_PATH=/usr/share/omarchy
fi
source "$OMARCHY_PATH/default/bash/rc"

. "$HOME/.local/bin/env"

# Dotfiles aliases
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias lazydotfiles='lazygit --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# Mise aliases
alias mr='mise run'

# pnpm
alias pn=pnpm
export PNPM_HOME="/home/daan/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# icat
alias icat="kitten icat"

# completions
for f in ~/.config/bash/completions/*; do
  [ -r "$f" ] && source "$f"
done
source <(gh completion  --shell bash)

# copy alias
alias copy=wl-copy

# lazy tools
alias lzd='lazydocker'
alias lzg='lazygit'

# Rust
. "$HOME/.cargo/env"

export PATH="$HOME/.config/composer/vendor/bin:$PATH"
