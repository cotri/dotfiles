#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

# Merge Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Set layout
setxkbmap -layout es

# Set screen resolution
xrandr --output VGA-1 --mode 1366x768

# Set screen standby timeout
xset dpms 120

# Start daemons
urxvtd -q -o -f &
compton -b > /dev/null 2>&1
dunst > /dev/null 2>&1 &
# redshift &

# Start WM
exec i3
