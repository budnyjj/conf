#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

emacs --daemon &
xscreensaver -no-splash &
xss-lock -- xscreensaver-command -lock &
udisksvm >/dev/null &

eval `ssh-agent`
exec awesome
