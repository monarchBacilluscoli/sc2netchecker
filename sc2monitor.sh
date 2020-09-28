#!/bin/bash

tmux new-session -s 'sc2monitor'
tmux split-window "watch -n 0.1 'netstat -antup | grep SC2 | sort -k 4'"
tmux split-window -h "watch -n 0.1 'netstat -antup | grep 389&390 | sort -k 4'"
tmux select-pane -U
tmux split-window -h "watch -n 1 'netstat -antup | grep TIME_WAIT | sort -k 4'"
tmux select-pane -L 
htop
