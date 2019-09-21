#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't put duplicate lines in the history
HISTCONTROL=ignoredups:ignorespace

# Append to the history file, don't overwrite it
shopt -s histappend

# Check window size
shopt -s checkwinsize

# Allows to cd into directory by just typing its name
shopt -s autocd

# For setting history length see HISTSIZE and HISTFILESIZE in bash
HISTSIZE=2000
HISTFILESIZE=2000

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias c='clear'
alias p='sudo pacman'
alias vim='nvim'
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

# Command line prompt. Default: PS1='\n[\u@\h \W]\$ '
PS1='\n\[\033[1;m\][\[\033[1;36m\]\u\[\033[0;m\]@\[\033[1;35m\]\h \[\033[m\]\W]\$ \[\033[0;m\]'

# Command line header
echo && lolban 'gogorrago emaidazu'
