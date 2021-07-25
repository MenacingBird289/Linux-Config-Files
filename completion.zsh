zmodload zsh/complist

#---------
# GENERAL
#---------

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect '^xg' clear-screen
bindkey -M menuselect '^xi' vi-insert
bindkey -M menuselect '^xh' accept-and-hold
bindkey -M menuselect '^xn' accept-and-infer-next-history
bindkey -M menuselect '^xu' undo
#------
# MAIN
#------
plugins=(... zsh-completions)
autoload -U compinit
compinit
_comp_options+=(globdots)

#---------
# OPTIONS
#---------

setopt MENU_COMPLETE
setopt AUTO_LIST
setopt COMPLETE_IN_WORD

#---------
# ZSTYLES
#---------

#Define completers
zstyle ':completion:*' completer _extensions _complete _approximate

# Use cache for commands using cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$ZDOTDIR/.zcompcache"

# complete the alias when _expand_alias is used as a function
zstyle ':completion:*' complete true

# ???
zle -C alias-expension complete-word _generic
bindkey '^A' alias-expension
zstyle ':completion:alias-expension:*' completer _expand_alias

# Allows you to select in a menu
zstyle ':completion:*' menu select
zstyle ':completion:*' force list always

# Autocomplete options for cd instead of directory stack
zstyle ':completion:*' complete-options true

zstyle ':completion:*' file-sort modification
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches$s'

# Colors for files and directory
zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}

# Only display some tags for the command cd
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
# zstyle ':completion:*:complete:git:argument-1:' tag-order !aliases

# Required for completion to be in good groups (named after the tags)
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion:*' file-sort modification
zstyle ':completion:*:*:-command-*:*:' group-order aliases builtins functions commands

# see ZSHCOMPWID "completion matching control"
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' keep=prefix true
zstyle ':completion:*' ignore-line other
zstyle ':completion:*' squeeze-slashes true
zstyle -e ':completion:*:(ssh|scp|scp|sftp|rsh|rsync):hosts' hosts 'replay=(${=${${(f)"$(cat {/etc/ssh_, ~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/})'
