# ~/.bashrc

[[ $- != *i* ]] && return

# Prompt
PS1='\[\e[92m\]\w \[\e[91m\]> \[\e[0m\]'

promptcmd() {
	echo -ne "\033]0;${PWD/$HOME/\~}\007"
}
PROMPT_COMMAND=promptcmd

# Aliases
alias ebsp='nvim ~/.config/bspwm/bspwmrc'
alias ehk='nvim ~/.config/sxhkd/sxhkdrc'
alias ls='ls --group-directories-first --color=always'
alias la='ls --group-directories-first --color=always -A'
alias p='ping -c 1 google.com'
alias randwall='feh -zr --bg-fill --no-fehbg ~/pics/wallpapers'
alias serv='python3 -m http.server'
alias vim='nvim'
alias z='fzf | xargs -r nvim'
