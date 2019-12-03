# ~/.bash_profile

source ~/.bashrc

export XDG_CONFIG_HOME=$HOME/.config
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.npm-global/bin
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
export BROWSER="firefox"
export EDITOR="nvim"
export TERMINAL="alacritty"

# Startx if tty1
[[ "$(tty)" = "/dev/tty1" ]] && \
    exec startx -- -keeptty > ~/.xorg.log 2>&1
