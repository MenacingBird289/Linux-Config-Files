#--------
# ZSHELL
#--------
export XDG_CONFIG_HOME="$HOME/.config"	# Setting the default config directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"	# Setting the default Zshell resources directory
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
export TERM='alacritty'
#------
# APPS
#------
export EDITOR="nvim"
export VISUAL="nvim"
export VIMCONFIG="$XDG_CONFIG_HOME/nvim"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export MYVIMRC="$XDG_CONFIG_HOME/nvim/init.vim"
