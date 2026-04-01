# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

bindkey -v

# ZSH_THEME="robbyrussell"
set -o vi

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


PS1='[%n@%F{red}%m%f %1~]$ '

# Plugins
plugins+=(git zsh-autosuggestions zsh-syntax-highlighting web-search tmux )

eval "$(fzf --zsh)"

export EDITOR="nvim"
export MANPAGER="nvim +Man!"
export XDG_CONFIG_HOME="$HOME/.config"
export FIREFOX_DIR="$HOME/.mozilla/firefox/irfvjek3.default-default"

alias ls="ls"
alias ll='ls -l'
alias nvi="nvim"
alias f="ufetch"
alias ff="fastfetch"
alias night="redshift -O 4500K"
alias day="redshift -x"
alias code="dbus-launch flatpak run com.visualstudio.code"
alias lg="lazygit"

# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"
