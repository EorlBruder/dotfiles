autorandr --load docked
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets,ssh) 
export SSH_AUTH_SOCK=/run/user/$(id -u)/keyring/ssh
~/.bin/export_x_info.sh
exec i3
