#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.git-prompt.sh
#PROMPT_COMMAND='__git_ps1 "\[\e[0;34m\]\u\[\e[m\]@\[\e[0;36m\]\h\[\e[m\] \W" "\\\$ "'
PS1='[\[\e[0;34m\]\u\[\e[m\]@\[\e[0;36m\]\h\[\e[m\] \W$(__git_ps1 " (%s)")]\$ '

export EDITOR=vim

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'

# colors for less
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

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

alias 'sshphysik'='TERM=vt100; ssh physik-cip'
alias 'sshuran001'='TERM=vt100; ssh uran001'

#Fuzzy finder
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_CRTL_T_COMMAND='rg --files'
export FZF_ALT_C_COMMAND='rg --files --null | xargs -0 dirname | uniq'

