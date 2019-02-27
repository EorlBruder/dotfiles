tmux new-window
tmux rename-window 'Weekly'

tmux split-pane -h 'exec watch --color -t todo.sh'
tmux split-pane -t 2 'exec watch --color -t "todo.sh -A -t -d ~/.todo/config-pending"'
tmux split-pane -t 3 'exec watch --color -t "todo.sh -A -t -d ~/.todo/config-schulden ls"'
tmux split-pane -t 1 'exec watch -t --color "todo.sh -A -t -d ~/.todo/config-role"'
tmux split-pane -h -t 1 'exec watch --color -t khal --color calendar now 7d'
tmux split-pane -h -t 3 'exec watch -t --color "todo.sh -A -t -d ~/.todo/config-project"'

tmux resize-pane -t 5 -R 30
tmux resize-pane -t 5 -U 5
tmux resize-pane -t 6 -D 5
tmux resize-pane -t 2 -L 5
tmux resize-pane -t 1 -D 2

tmux select-pane -t 1
