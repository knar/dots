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
alias conf='cd ~/.config; fzf | xargs -r nvim'
alias ebsp='nvim ~/.config/bspwm/bspwmrc'
alias esxh='nvim ~/.config/sxhkd/sxhkdrc'
alias f='fff "$@"; cd "$(< ~/.cache/fff/fff_d)"'
alias fo='fzf | xargs -r nvim'
alias gdls='cd ~/dls'
alias gconf='cd ~/.config'
alias gd='cd ~/dev'
alias guni='cd ~/docs/uni/spring19'
alias ls='ls --group-directories-first --color=always'
alias la='ls --group-directories-first --color=always -A'
alias p='ping -c 1 google.com'
alias randwall='feh -zr --bg-fill --no-fehbg ~/pics/wallpapers'
alias serv='python3 -m http.server'
alias ssh-os='ssh -p 3022 os-class@localhost'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
