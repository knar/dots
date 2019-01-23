# ~/.profile

# Env vars    
export XDG_CONFIG_HOME=$HOME/.config    
export PATH=$PATH:$HOME/bin    
export PATH=$PATH:$HOME/.npm-global/bin    
export BROWSER="chromium"    
export EDITOR="nvim"    
export TERMINAL="urxvt"    
export WALLPAPER=$HOME/pics/wallpapers/cozyden.jpg

# Startx if tty1
[[ "$(tty)" = "/dev/tty1" ]] && \
    exec startx -- -keeptty > ~/.xorg.log 2>&1
