#!/bin/sh

set -e 

DOT_DIR=~/dot

ln -svnf $DOT_DIR/alacritty ~/.config/
ln -svnf $DOT_DIR/i3 ~/.config/
ln -svnf $DOT_DIR/nvim ~/.config/
ln -svnf $DOT_DIR/tmux/.tmux.conf ~/.tmux.conf
ln -svnf $DOT_DIR/.vimrc ~/.vimrc
ln -svnf $DOT_DIR/fish ~/.config/
ln -svnf $DOT_DIR/.emacs ~/.emacs
ln -svnf $DOT_DIR/i3status/ ~/.config

echo "all set!"
