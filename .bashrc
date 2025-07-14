# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set a steady underline cursor
echo -ne '\e[4 q'

# Enable color support for ls and grep
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Set the command prompt format
PS1='[\u@\h \W]\$ '

