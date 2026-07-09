#!/bin/sh

DOT_DIR="$(cd "$(dirname "$0")" && pwd)"

rm -rf ~/.config/alacritty
ln -svnf $DOT_DIR/alacritty ~/.config/

rm -rf ~/.config/i3
ln -svnf $DOT_DIR/i3 ~/.config/

rm -rf ~/.config/nvim
ln -svnf $DOT_DIR/nvim ~/.config/

ln -svnf $DOT_DIR/tmux/.tmux.conf ~/.tmux.conf
ln -svnf $DOT_DIR/.vimrc ~/.vimrc

rm -rf ~/.config/fish
ln -svnf $DOT_DIR/fish ~/.config/

ln -svnf $DOT_DIR/.emacs ~/.emacs

rm -rf ~/.config/i3status
ln -svnf $DOT_DIR/i3status/ ~/.config

rm -rf ~/.config/ghostty
ln -svnf $DOT_DIR/ghostty/ ~/.config/

ln -svnf $DOT_DIR/.bashrc ~/.bashrc
ln -svnf $DOT_DIR/.zshrc ~/.zshrc
ln -svnf $DOT_DIR/.Xresources ~/.Xresources
ln -svnf $DOT_DIR/.xinitrc ~/.xinitrc

rm -rf ~/.config/sway
ln -svnf $DOT_DIR/sway ~/.config/

ln -svnf $DOT_DIR/flameshot ~/.config/

echo "all set!"
