#!/bin/sh
#
# .xinitrc

xset r rate 170 20
xset m 1/1
xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xrdb ~/.Xresources

feh --bg-fill $WALLPAPER
#xsetroot -solid $DARKBLACK
sxhkd &
bar &
unclutter &

exec bspwm
