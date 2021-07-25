#------------
# NAVIGATION
#------------
setopt autocd			# Automatically change directory when typing a path
setopt AUTO_PUSHD			# Push the current directory visited onto the stack
setopt PUSHD_IGNORE_DUPS	# Do not store duplicates in the stack
setopt PUSHD_SILENT	# Do not print the directory stack after pushd or popd
alias d='dirs -v'
for index ({1..15}) alias "$index"="cd+${index}"; unset index
setopt GLOB_DOTS   # Do not require a leading . in a filename to be matched explicitly
#---------
# GENERAL
#---------
setopt CORRECT	# spelling correction
setopt CDABLE_VARS		# CD to a path stored in a variable
setopt EXTENDED_GLOB		# Use extend globbing syntax

#---------
# HISTORY
#---------
setopt EXTENDED_HISTORY		# Write the history file in the :start:elapsed:command format
setopt SHARE_HISTORY		# Share history between all sessions
setopt HIST_EXPIRE_DUPS_FIRST		# Expire a duplicate event first when trimming history
setopt HIST_IGNORE_DUPS			# Do not record an event that was just recorded again
setopt HIST_IGNORE_ALL_DUPS		# Delete an old recorded event if a new one is a duplicate
setopt HIST_FIND_NO_DUPS		# Do not display a previously found event
setopt HIST_IGNORE_SPACE		# Do not record an event that starts with space
setopt HIST_SAVE_NO_DUPS		# Do not write a duplicate event to the history file
setopt HIST_VERIFY		# Do not execute immediately upon his:Wtory expansion
