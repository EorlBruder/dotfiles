tmux rename-window 'Daily'

tmux split-pane -h 'exec watch --color -t todo.sh lsp A-B'
tmux split-pane -t 2 'exec watch --color -t ~/repositories/habitctl/target/release/habitctl todo'
tmux split-pane -t 3 'exec watch --color -t khal --color calendar now tomorrow'

tmux select-pane -t 1
tmux resize-pane -R 30
tmux select-pane -t 2
tmux resize-pane -U 10
tmux select-pane -t 3
tmux resize-pane -U 2
