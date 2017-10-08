#!/bin/bash

files=(
	".vimrc" "vimrc"
	".xinitrc" "xinitrc"
	".bashrc" "bashrc"
	".xbindkeysrc" "xbindkeysrc"
	".vim/UltiSnips" "vim/"
	".config/i3" "config/"
	".config/keybindings" "config/"
	".config/scripts" "config/"
	".config/qutebrowser" "config/")

for (( i=0;i<${#files[@]};i+=2 )) do
	cp -r $HOME/${files[$i]} ${files[$i+1]}
done
