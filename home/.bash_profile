# ~/.bash_profile

source ~/.bashrc

export XDG_CONFIG_HOME=$HOME/.config
export PATH=$PATH:$HOME/.local/bin
export BROWSER="firefox-developer-edition"
export EDITOR="nvim"
export TERMINAL="alacritty"

# Startx if tty1
[[ "$(tty)" = "/dev/tty1" ]] && \
    exec startx ~/.config/xinit/xinitrc -- -keeptty > ~/log/xorg.log 2>&1
