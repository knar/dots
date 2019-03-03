#!/bin/sh
#
# ~/.xinitrc

xset r rate 180 50
xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xrdb ~/.Xresources

sxhkd &
bar &
unclutter &
redshift &
compton &
feh --bg-fill --no-fehbg ~/pics/wallpapers/beach.jpg

exec bspwm
