### Added by Zplugin's installer
source "${HOME}/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin ### End of Zplugin's installer chunk

# HISTFILE="${HOME}/.zsh_hist_file"

setopt nobeep
setopt hist_ignore_all_dups
setopt auto_cd

zplugin ice lucid
zplugin snippet OMZ::lib/history.zsh

zplugin ice lucid
zplugin snippet OMZ::plugins/vi-mode/vi-mode.plugin.zsh

zplugin snippet OMZ::lib/git.zsh
zplugin snippet OMZ::plugins/git/git.plugin.zsh
zplugin cdclear -q

setopt promptsubst
zplugin snippet $HOME/.zsh-theme
# zplugin snippet OMZ::themes/robbyrussell.zsh-theme

zplugin ice wait"0a" lucid
zplugin snippet OMZ::lib/directories.zsh

zplugin ice wait"0a" blockf lucid
zplugin light zsh-users/zsh-completions

zplugin ice wait"0a" atload"_zsh_autosuggest_start" lucid
zplugin light zsh-users/zsh-autosuggestions
 
zplugin ice wait"0c" lucid
zplugin snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
 
zplugin ice wait"1" atinit"ZPLGM[COMPINIT_OPTS]=-C; zpcompinit; zpcdreplay" zatinit"FAST_WORK_DIRS=XDG; zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting
 
zstyle ':completion:*' menu select

# Aliases
source $HOME/.aliases
 
# FZF / ripgrep
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
