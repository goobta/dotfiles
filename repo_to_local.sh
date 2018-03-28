#!/bin/bash

files=(
    ".vimrc" "vimrc"
    ".vim/" "vim/UltiSnips/"
    ".xinitrc" "xinitrc"
    ".tmux.conf" "tmux.conf"
    ".bashrc" "bashrc"
    ".xbindkeysrc" "xbindkeysrc"
    ".config/" "config/i3/"
    ".config/" "config/keybindings/"
    ".config/" "config/scripts/"
    ".config/" "config/qutebrowser/"
)


for (( i=0;i<${#files[@]};i+=2 )) do
    cp -r ${files[$i+1]} $HOME/${files[$i]}
done
