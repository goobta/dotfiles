#!/bin/bash

files=(
    ".vimrc" "vimrc"
    ".vim/UltiSnips" "vim/"
    ".xinitrc" "xinitrc"
    ".tmux.conf" "tmux.conf"
    ".bashrc" "bashrc"
    ".xbindkeysrc" "xbindkeysrc"
    ".config/i3" "config/"
    ".config/keybindings" "config/"
    ".config/scripts" "config/"
    ".config/qutebrowser" "config/"
		".emacs" "emacs"
)


for (( i=0;i<${#files[@]};i+=2 )) do
    cp -r $HOME/${files[$i]} ${files[$i+1]}
done
