#!/bin/bash

files=(
    ".vimrc" "vimrc"
    ".vim/" "vim/UltiSnips/"
		".aliases" "aliases"
    ".tmux.conf" "tmux.conf"
    ".config/" "config/i3/"
    ".config/" "config/keybindings/"
    ".config/" "config/scripts/"
)


for (( i=0;i<${#files[@]};i+=2 )) do
    cp -r ${files[$i+1]} $HOME/${files[$i]}
done
