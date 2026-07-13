# nvm
source /usr/share/nvm/init-nvm.sh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

bindkey -v

# ZSH_THEME="robbyrussell"
set -o vi

plugins=(git zsh-syntax-highlighting web-search tmux)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


PS1='%n@%m %F{magenta}%1~%f $(git rev-parse --abbrev-ref HEAD 2>/dev/null | sed "s/.*/(&) /" | tr -d "\n")> '

# eval "$(starship init zsh)"

eval "$(fzf --zsh)"

export EDITOR="nvim"
export MANPAGER="nvim +Man!"
export XDG_CONFIG_HOME="$HOME/.config"
export FIREFOX_DIR="$HOME/.config/mozilla/firefox/2ve6nf3j.default-release"

alias ls="ls"
alias ll='ls -l'
alias nvi="nvim"
alias f="ufetch"
alias branch='git checkout $(git branch | fzf)'
alias ff="fastfetch"
alias of="onefetch"
alias lg="lazygit"
alias open="xdg-open"
alias ta="tmux a"
alias cd=z
alias cat=bat

# for x11 (redshift)
alias night="redshift -O 4500K"
alias day="redshift -x"
alias scrot='scrot ~/screenshots/%b%d::%H%M%S.png'

# # for wayland (gammastep)
# alias night="gammastep -O 4500K &"
# alias day="gammastep -x"

# Compilation flags
export ARCHFLAGS="-arch $(uname -m)"

# opencode
export PATH=/home/nk/.opencode/bin:$PATH

# go
export PATH="$PATH:$HOME/go/bin"

# Android
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_AVD_HOME=$HOME/.config/.android/avd
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Java
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$PATH:$JAVA_HOME/bin

# zoxide
eval "$(zoxide init zsh)"

# direnv
eval "$(direnv hook zsh)"

zi() {
  local dir
  dir=$(zoxide query -l | fzf) && z "$dir"
}
