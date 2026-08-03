# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
RED=$(tput setaf 1)
RESET=$(tput sgr0) 

export EDITOR=nvim
export VISUAL="$EDITOR" 
export XDG_CONFIG_HOME="$HOME/.config"
export FIREFOX_DIR="$HOME/.mozilla/firefox/irfvjek3.default-default"
export MANPAGER='nvim +Man!'

alias ls="ls"
alias ll='ls -lah'
alias nvi="nvim"
alias f="ufetch"
alias ff="fastfetch"
alias night="redshift -O 4500K"
alias day="redshift -x"
alias code="dbus-launch flatpak run com.visualstudio.code"
PS1='[\u@${RED}\h${RESET} \W]\$ '
. "$HOME/.cargo/env"

. "$HOME/.local/bin/env"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
