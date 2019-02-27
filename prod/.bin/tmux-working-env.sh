#!/bin/zsh                                                                                                   
source ~/.zshrc 

SESSIONNAME="$DEFAULT_TMUX_SESSION"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ] 
 then
    tmux new-session -s $SESSIONNAME -n script -d
    
    zsh ~/.bin/tmux-daily-window.sh
    zsh ~/.bin/tmux-weekly-window.sh
    zsh ~/.bin/tmux-work-window.sh 

    tmux select-window -t 1
    tmux select-pane -t 1

     
fi

tmux attach -t $SESSIONNAME
