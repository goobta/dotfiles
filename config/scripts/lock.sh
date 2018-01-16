#!/bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
convert /tmp/screen.png $1 -gravity center ~/Pictures/Icons/icon.png -composite -matte /tmp/screen.png
i3lock -f -e -i /tmp/screen.png
rm /tmp/screen.png
