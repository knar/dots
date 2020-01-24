# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='\[\e[92m\]\w \[\e[91m\]> \[\e[0m\]'

# Dynamically update title
promptcmd() { echo -ne "\033]0;${PWD/$HOME/\~}\007"; }
PROMPT_COMMAND=promptcmd

# Add colors to man pages
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

# Aliases
alias ebsp='nvim ~/.config/bspwm/bspwmrc'
alias ehk='nvim ~/.config/sxhkd/sxhkdrc'
alias ls='ls --group-directories-first --color=always'
alias la='ls --group-directories-first --color=always -A'
alias p='ping -c 1 google.com'
alias rm='rm -iv'
alias serv='python3 -m http.server'
alias vim='nvim'
