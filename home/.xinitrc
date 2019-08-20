#!/bin/sh
#
# ~/.xinitrc

xset r rate 200 40
xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xrdb ~/.Xresources

sxhkd &
#bar &
unclutter &
redshift &
compton &
feh --bg-fill --no-fehbg ~/pics/wallpapers/coast.jpg

exec bspwm
