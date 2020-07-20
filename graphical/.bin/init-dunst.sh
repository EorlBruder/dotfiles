if [ ! -e $HOME/.config/dunst ]; then
  mkdir -p ~/.config/dunst
fi
if [ ! -e $HOME/.config/dunst/dunstrc ]; then
  ln -s ~/.cache/wal/dunstrc ~/.config/dunst
fi
