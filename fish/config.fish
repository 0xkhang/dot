set -g fish_key_bindings fish_vi_key_bindings
set -g fish_greeting
set fish_cursor_default block
set fish_cursor_insert block
set -x XDG_RUNTIME_DIR /run/user/(id -u)
set -x MANPAGER "nvim +Man!"

alias f="fastfetch"
alias night="redshift -O 4500K"
alias day="redshift -x"
