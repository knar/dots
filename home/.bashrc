# ~/.bashrc

[[ $- != *i* ]] && return

# Prompt
PS1='\[\e[92m\]\w\[\e[33m\] > \[\e[0m\]'

promptcmd() {
	echo -ne "\033]0;${PWD/$HOME/\~}\007"
}
PROMPT_COMMAND=promptcmd

# Aliases
alias c='clear'
alias ebsp='nvim ~/.config/bspwm/bspwmrc'
alias esxh='nvim ~/.config/sxhkd/sxhkdrc'
alias gdls='cd ~/dls'
alias gconf='cd ~/.config'
alias gd='cd ~/dev'
alias ggo='cd ~/dev/go'
alias gub='cd ~/ub/spring19'
alias ls='ls --group-directories-first --color=always'
alias la='ls --group-directories-first --color=always -A'
alias p='ping -c 1 google.com'
alias f='fff "$@"; cd "$(< ~/.cache/fff/fff_d)"'
alias ssh-os='ssh-p 3022 os-class@localhost'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
