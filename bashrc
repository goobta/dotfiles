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

alias lambda='ssh -Y agupta@gupta-lambda.dyn.wpi.edu'
alias elixir='ssh pi@gupta-elixir.dyn.wpi.edu'

alias wpi_shares='sh ~/.config/scripts/wpi_shares.sh'

PS1='[\u@\h \W]\$ '
