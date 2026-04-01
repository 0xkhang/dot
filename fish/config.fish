set -g fish_key_bindings fish_vi_key_bindings
set -g fish_greeting
set fish_cursor_default block
set fish_cursor_insert block
set -x XDG_RUNTIME_DIR /run/user/(id -u)
set -x MANPAGER "nvim +Man!"

function fish_mode_prompt
end

function fish_prompt 
    set_color green
    printf '[%s] ' (whoami)
    set_color blue
    printf '%s' (prompt_pwd | string split /)[-1]

    set -l branch (git branch --show-current 2>/dev/null)
    if test -n "$branch"
        set_color normal
        printf ' (%s' $branch

        set -l added (git diff --numstat | awk '{sum+=$1} END {print sum}')
        set -l deleted (git diff --numstat | awk '{sum+=$2} END {print sum}')

        if test -n "$added" -a "$added" -gt 0
            set_color green
            printf ' +%d' $added
        end

        if test -n "$deleted" -a "$deleted" -gt 0
            set_color red
            printf ' -%d' $deleted
        end

        set_color normal
        printf ')'
    end

    set_color yellow
    printf ' λ '
    set_color normal
end

alias ls="ls"
alias ll='ls -l'
alias nvi="nvim"
alias f="ufetch"
alias ff="fastfetch"
alias night="redshift -O 4500K"
alias day="redshift -x"
alias code="dbus-launch flatpak run com.visualstudio.code"
