#!/bin/zsh

######
# Main ZSH theme (unironic)

local user="%F{yellow}%n%F{default}"
local host_name="%F{cyan}%m%F{default}"
local path_string="%F{magenta}%~%F{default}"
local prompt_string=" %F{default}⊨ "

PROMPT="
{$path_string | $user ∈ $host_name}
$prompt_string"
