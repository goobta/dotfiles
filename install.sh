#!/bin/bash

files=(
	".vimrc" "vimrc"
	".vim/UltiSnips" "vim/Ultisnips"
	".config/i3" "config/i3"
	".config/qutebrowser" "config/qutebrower")

for (( i=0;i<${#files[@]};i+=2 )) do
	cp -r ${files[$i+1]} $HOME/${files[$i]}
done
