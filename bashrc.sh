#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias la='ls -A'
alias ll='ls -alF'

ps1_machine='\[\e[38;5;166m\]\h\[\e[0m\]'
ps1_pwd='\[\e[38;5;118m\]\w\[\e[0m\]'

if [ "$UID" -eq 0 ]; then
	ps1_user='\[\e[38;5;196m\]\u\[\e[0m\]'
else
	ps1_user='\[\e[38;5;135m\]\u\[\e[0m\]'
fi
export PS1="$ps1_user@$ps1_machine:$ps1_pwd\n\\$ "

# set xterm title
if [ $TERM = xterm* ]; then
    export PS1="\[\e]0;\u@\h:\w\a\]$PS1"
fi

unset ps1_user
unset ps1_machine
unset ps1_pwd
