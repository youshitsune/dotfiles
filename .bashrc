alias g='git'
alias ls='eza -lAh'
alias vim='nvim'
alias code='vscodium'
alias mutt='neomutt'
alias config='git --git-dir=/home/youshitsune/dotfiles --work-tree=/home/youshitsune'
alias search='nix search --extra-experimental-features "nix-command flakes" nixpkgs'
export PATH="$PATH:/snap/bin:/home/youshitsune/.local/bin:/home/youshitsune/go/bin/:/home/youshitsune/.local/share/nvim/mason/bin:$BUN_INSTALL/bin:/home/youshitsune/.local/share/AppImage:/home/youshitsune/.local/opt/STM32CubeProgramer/bin:/home/youshitsune/.cargo/bin/"
export EDITOR="nvim"
export TERM="kitty"
export XDG_CONFIG_HOME="/home/youshitsune/.config"


# bun
export BUN_INSTALL="$HOME/.config/.bun"
export PATH=$BUN_INSTALL/bin:/usr/bin/watcom/binl64:$PATH
export NNN_OPTS="H"
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

export STM32_PRG_PATH=/home/youshitsune/.local/opt/STM32CubeProgramer/bin
