#!/bin/bash

files=(
	".vimrc" "vimrc"
	".bashrc" "bashrc"
	".vim/UltiSnips" "vim/UltiSnips"
	".config/i3" "config/i3"
	".config/qutebrowser" "config/qutebrowser")

for (( i=0;i<${#files[@]};i+=2 )) do
	cp -r $HOME/${files[$i]} ${files[$i+1]}
done
