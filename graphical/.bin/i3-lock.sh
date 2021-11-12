if ! pidof i3lock; then
  i3lock --ignore-empty-password --clock --date-str="%d-%m-%Y" --time-str="%H:%M" --keylayout 0
fi
