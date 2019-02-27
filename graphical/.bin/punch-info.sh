#!/bin/sh
current_task=$(python2 ~/repositories/punch/Punch.py what | head -n 1 | sed -E 's/No task is active\.//' | sed -E 's/[0-9][0-9][0-9][0-9]\-[0-9][0-9]\-[0-9][0-9]\ //' | sed -E 's/\([A-D]\)//' | sed -E 's/\+[A-Z|a-z|0-9|\_|-]+//' | sed -E 's/Active task://' | sed -E 's/\ \ / /g' | sed -E 's/\ //') 

if [ -z "$current_task" ]; then
  result="currently no active task"
else
  result="$current_task"
fi

echo "$result"
