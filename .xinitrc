#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Execution du  Dual Screen
xrandr --output DisplayPort-0 --off --output DVI-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DVI-0 --off --output HDMI-0 --mode 1920x1080 --pos 1920x0 --rotate normal


# Lecture du fichier ressource
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

urxvt -T Terminal &

xbindkeys &

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.mpd/pid ] && mpd

# Lancement du gestionnaire de fenetre Awesome
exec awesome

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
