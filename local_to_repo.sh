#!/bin/bash

files=(
    ".vimrc" "vimrc"
    ".vim/UltiSnips" "vim/"
    ".tmux.conf" "tmux.conf"
    ".aliases" "aliases"
    ".config/i3" "config/"
    ".config/keybindings" "config/"
    ".config/scripts" "config/"
		".emacs" "emacs"
)


for (( i=0;i<${#files[@]};i+=2 )) do
    cp -r $HOME/${files[$i]} ${files[$i+1]}
done
