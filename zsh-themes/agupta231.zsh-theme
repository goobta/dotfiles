######
# Main ZSH theme (unironic)

local host_name="%F{yellow}%n%F{default} at %F{cyan}%m"
local path_string="%F{default}%~"
local prompt_string=" %F{default}∴ "

PROMPT="
$host_name %F{magenta}$path_string
$prompt_string"
