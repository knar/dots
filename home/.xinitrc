#!/bin/sh
#
# ~/.xinitrc

xset r rate 150 50
xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xrdb ~/.Xresources

sxhkd &
bar &
unclutter &
redshift &
compton --config ~/.config/compton/config &
feh --bg-fill --no-fehbg ~/pics/wallpapers/house.jpg

exec bspwm
