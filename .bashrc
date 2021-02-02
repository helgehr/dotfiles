#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1="[\[\e[0;34m\]\u\[\e[m\]@\[\e[0;36m\]\h\[\e[m\] \W]$"

export EDITOR=vim

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'

set -o vi

ranger() {
	if [ -z "$RANGER_LEVEL" ]; then
	    /usr/bin/ranger "$@"
	else
		exit
	fi
}

export JAVA_HOME="/usr/lib/jvm/java-15-openjdk"
export PATH="$PATH:$JAVA_HOME/bin:$HOME/.local/bin"

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
alias gitdot='/usr/bin/git --git-dir=/home/helge/dotfiles/ --work-tree=/home/helge'
alias 'sshphysik'='TERM=vt100; ssh physik-cip '
