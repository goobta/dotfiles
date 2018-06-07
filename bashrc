#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='ls --color=auto'
alias ls='ls --color=auto'
alias v='vim'
alias suspend='sudo systemctl suspend | i3lock -i ~/Pictures/screensaver.png'

alias lambda='ssh -Y agupta@gupta-lambda.dyn.wpi.edu'
alias elixir='ssh pi@gupta-elixir.dyn.wpi.edu'

alias xterm="termite"

alias wpi_shares='sh ~/.config/scripts/wpi_shares.sh'
alias wpi_home='cd /home/agupta/Netdrives/WPI/home/My_Documents/'

# PS1='[\u@\h \W]\$ '
# source /usr/share/nvm/init-nvm.sh
