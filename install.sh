#!/bin/bash

files=(
	".vimrc" "vimrc"
	".vim/" "vim/UltiSnips"
	".config/" "config/i3"
	".config/" "config/qutebrowser")

for (( i=0;i<${#files[@]};i+=2 )) do
	cp -r ${files[$i+1]} $HOME/${files[$i]}
done
