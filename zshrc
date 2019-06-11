source ~/.zplug/init.zsh

zplug "plugins/git",               from:oh-my-zsh
zplug "plugins/dircycle",          from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/pip",               from:oh-my-zsh
zplug "plugins/python",            from:oh-my-zsh
zplug "plugins/docker",            from:oh-my-zsh
zplug "plugins/vi-mode",           from:oh-my-zsh

zplug "zsh-users/zsh-autosuggestions"
zplug "mafredri/zsh-async", from:github, defer:0
zplug "lib/completion", from:oh-my-zsh
zplug "zdharma/fast-syntax-highlighting", from:github, defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3

zplug "themes/bira", from:oh-my-zsh, as:theme

alias ls='ls --color=auto'
alias d='dirs -v'

# Key timeout and character sequences
KEYTIMEOUT=1
WORDCHARS='*?_-[]~=./&;!#$%^(){}<>'

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE

setopt autocd                   # Allow changing directories without `cd`
setopt append_history           # Dont overwrite history
setopt extended_history         # Also record time and duration of commands.
setopt share_history            # Share history between multiple shells
setopt hist_expire_dups_first   # Clear duplicates when trimming internal hist.
setopt hist_find_no_dups        # Dont display duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates.
setopt hist_ignore_all_dups     # Remember only one unique copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt hist_save_no_dups        # Omit older commands in favor of newer ones.
setopt hist_ignore_space        # Ignore commands that start with space.

# Changing directories
setopt auto_pushd
setopt pushd_ignore_dups        # Dont push copies of the same dir on stack.
setopt pushd_minus              # Reference stack entries with "-".

setopt extended_glob

zplug load
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
