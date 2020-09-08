#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias la='ls -A'
alias ll='ls -alF'
#PS1='\n\[\033[32m\]\u\[\033[0m\]@\h \[\e[34m\]\w\[\033[0m\]\n\[\033[33m\]\$\[\033[0m\] '
if [ "$UID" -eq 0 ]; then
	export PS1='\n\[\e[38;5;196m\]\u\[\e[0m\]@\[\e[38;5;166m\]\h\[\e[0m\]:\[\e[38;5;118m\]\w\[\e[0m\]\n\$ '
else
	export PS1='\n\[\e[38;5;135m\]\u\[\e[0m\]@\[\e[38;5;166m\]\h\[\e[0m\]:\[\e[38;5;118m\]\w\[\e[0m\]\n\$ '
fi
export PS1="\[\e]0;\u@\h:\w\a\]$PS1"

