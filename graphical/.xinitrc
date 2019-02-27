autorandr --load docked
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets,ssh) 
~/.bin/export_x_info.sh
exec i3
