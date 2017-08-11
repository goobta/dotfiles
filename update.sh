#!/bin/bash

files=(
	".vimrc" "vimrc"
	".vim/UltiSnips" "vim/"
	".config/i3" "config/"
	".config/qutebrowser" "config/")

for (( i=0;i<${#files[@]};i+=2 )) do
	cp -r $HOME/${files[$i]} ${files[$i+1]}
done
