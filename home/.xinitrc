#!/bin/sh
#
# ~/.xinitrc

xset r rate 200 50
xset m 1/1 0
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
