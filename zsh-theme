# Main prompt
#

local host_name="%F{yellow}daddy%F{default}@🅰 lpha
😩🍆👅💧👌👌👌👌👉 "
local path_string="%F{yellow}%~"
local prompt_string=""

PROMPT="$host_name"

#
# Right Prompt
#
#

remote_host_prompt () {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo "%{$fg[cyan]%}$(hostname)"
  else
    echo ""
  fi
}

local time="%{$fg[magenta]%}%*%{$reset_color%}"

RPROMPT='eyy bb'
