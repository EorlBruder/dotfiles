tmux rename-window 'Main'

tmux split-pane -h 'exec watch --color -t khal --color calendar now tomorrow'

tmux select-pane -t 1
tmux resize-pane -R 30
