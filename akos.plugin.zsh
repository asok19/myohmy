WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'
export WORDCHARS

setopt no_beep
unsetopt share_history
unsetopt inc_append_history
setopt inc_append_history_time
setopt extended_glob
setopt rc_quotes
setopt no_notify
setopt csh_null_glob
setopt numeric_glob_sort
setopt print_exit_value
setopt correct

bindkey '^[r' redisplay
bindkey '^[p' history-beginning-search-backward
bindkey '^[n' history-beginning-search-forward

alias batch='schedtool -B -e ionice -c 3 '

if [[ -n "$SSH_AGENT_PID" ]]; then
	if [[ -n "$(print -- ${HOME}/.ssh/*_nopass(N))" ]]; then
		ssh-add ${HOME}/.ssh/*_nopass 2> /dev/null
	fi
fi
