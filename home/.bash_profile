# ~/.bash_profile

# Env vars
export XDG_CONFIG_HOME=$HOME/.config
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/dev/fff
export PATH=$PATH:$HOME/.npm-global/bin
export BROWSER="chromium"
export EDITOR="nvim"
export TERMINAL="st"

# opam configuration
test -r ~/.opam/opam-init/init.sh && . ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# FFF
export FFF_OPENER="xdg-open"
export FFF_CD_FILE=~/.cache/fff/fff_d
export FFF_COL1=4
export FFF_FAV1=~/dev
export FFF_FAV2=~/.config
export FFF_FAV3=~/dls
export FFF_FAV4=~/pics

# Startx if tty1
[[ "$(tty)" = "/dev/tty1" ]] && \
    exec startx -- -keeptty > ~/.xorg.log 2>&1
