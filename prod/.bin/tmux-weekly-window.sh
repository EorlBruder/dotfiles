tmux new-window
tmux rename-window 'Weekly'

tmux split-pane -h 'exec watch --color -t todo.sh'
tmux split-pane -t 2 'exec watch --color -t "todo.sh -A -t -d ~/.todo/config-pending"'
tmux split-pane -t 3 'exec watch --color -t "todo.sh -A -t -d ~/.todo/config-schulden ls"'
tmux split-pane -t 1 'exec watch -t --color "todo.sh -A -t -d ~/.todo/config-role"'
tmux split-pane -h -t 1 'exec watch --color -t khal --color calendar now 7d'
tmux split-pane -h -t 3 'exec watch -t --color "todo.sh -A -t -d ~/.todo/config-project"'

#tmux resize-pane -t 5 -R 30
#tmux resize-pane -t 5 -y 30
#tmux resize-pane -t 6 -y 30
#tmux resize-pane -t 1 -y 30

tmux select-layout "a916,270x65,0,0{165x65,0,0[165x34,0,0{42x34,0,0,4,122x34,43,0,9},165x30,0,35{72x30,0,35,8,92x30,73,35,10}],104x65,166,0[104x30,166,0,5,104x25,166,31,6,104x8,166,57,7]}"
#tmux resize-pane -t 2 -x 110
#tmux resize-pane -t 3 -x 80

tmux select-pane -t 1
