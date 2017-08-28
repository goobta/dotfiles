#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls --color=auto'
alias ls='ls --color=auto'
alias v='vim'
alias s='sudo'
alias suspend='sudo systemctl suspend | i3lock -i ~/Pictures/screensaver.png'

PS1='[\u@\h \W]\$ '
