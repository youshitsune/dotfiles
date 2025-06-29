case $- in
  *i*) ;;
    *) return;;
esac

export OSH='/home/youshitsune/.config/oh-my-bash'
OSH_THEME="half-life"
OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

alias g='git'
alias ls='eza -lAh'
alias nrs='sudo nixos-rebuild switch'
alias vim='nvim'
alias code='vscodium'
alias mutt='neomutt'
alias config='git --git-dir=/home/youshitsune/dotfiles --work-tree=/home/youshitsune'
alias search='nix search --extra-experimental-features "nix-command flakes" nixpkgs'
export PATH="$PATH:/home/youshitsune/.local/bin:/home/youshitsune/go/bin/:/home/youshitsune/.local/share/nvim/mason/bin/:home/youshitsune/.cargo/bin/:/usr/local/bin"
export EDITOR="nvim"
export TERM="kitty"
export XDG_CONFIG_HOME="/home/youshitsune/.config"
