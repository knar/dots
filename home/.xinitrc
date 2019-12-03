#!/bin/sh

feh --bg-fill --no-fehbg ~/pics/wallpapers/beach.jpg
xrdb ~/.Xresources

xset r rate 200 50
xset m 1/1 0
xset s 60 60
xset s off -dpms

xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape

sxhkd &
bar &
redshift &
compton -b
unclutter -b

exec bspwm
