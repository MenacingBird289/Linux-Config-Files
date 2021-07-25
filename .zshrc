#
# ~/.config/zsh/zshrc
#----------
# SOURCING
#----------
# Autocompletion
source $ZDOTDIR/completion.zsh
# Aliases
source $ZDOTDIR/aliases
# Override colors
eval "$(dircolors -b $ZDOTDIR/dircolors)"
# Options
source $ZDOTDIR/options.zsh
# Prompt
#PS1='%F{magenta}%t%f%F{cyan} Arch-Linux %f%(?.%F{green}.%F{red}) %~ %#%f '
fpath=($ZDOTDIR/)
autoload -Uz prompt; prompt
