if ! pidof i3lock; then
  # Kill keepmenu-daemon
  pgrep -a python | grep keepmenu | awk '{print $1}' | xargs kill
  # Pause dunst, so no notifications get shown
  pkill -u "$USER" -USR1 dunst
  # Lock the screen. Not forking, for dunst-suspending to work
  i3lock --ignore-empty-password --clock --date-str="%d-%m-%Y" --time-str="%H:%M" --keylayout 0 -n
  # continue dunst
  pkill -u "$USER" -USR2 dunst
fi
