#!/bin/bash

files=(
	".vimrc" "vimrc"
	## Only uncomment the one below if you are setting up arch
	# ".xinitrc" "xinitrc" 
	".xbindkeysrc" "xbindkeysrc"
	".bashrc" "bashrc"
	".vim/" "vim/UltiSnips"
	".config/" "config/i3"
	".config/" "config/keybindings"
	".config/" "config/scripts"
	".config/" "config/qutebrowser")

for (( i=0;i<${#files[@]};i+=2 )) do
	cp -r ${files[$i+1]} $HOME/${files[$i]}
done
