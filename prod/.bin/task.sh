#!/bin/zsh

main() {
  action="$1"
  evalCurrentTask
  isTaskBeingTracked

  case $action in
    "start" )
      start $2
    ;;
    "startc" )
      startc $2
    ;;
    "pause" )
      pause
    ;;
    "resume" )
      resume 
    ;;
    "stop" )
      stop
    ;;
    "finish" ) 
      finish
    ;;
    * )
      help
    ;;
  esac
}

start() {
  taskExist=$(todo -p ls | grep "^0*$@")
  if [ ! "$taskExist" ]; then
    echo "No valid task-id: $@"
  elif [ $taskActive ]; then
    echo "A task is currently being tracked" 
  elif [ ! $currentTask = $@ ] && [ ! "$currentTask" = "--" ] ; then
    echo "Another task currently is marked as active"
  else
    echo "starting work on task: $@"
    echo `todo pri $@ A`
    echo `punch in $@`
  fi
}

startc() {
  number=$(todo add "$@" | head -n 1 | cut -d " " -f1) 
  start $number
}

pause() {
  echo `punch out`
} 

resume() {
  start $currentTask
} 

stop() {
  echo `punch out`
  echo `todo pri $currentTask B`
}

finish() {
  echo `punch out`
  echo `todo do $currentTask`
}

isTaskBeingTracked() {
  taskActive=$(punch what | sed -E "s/No task is active.//")
}

evalCurrentTask() {
  currentTask=$(todo -p listpri A | head -n 1 | sed -E 's/ .*//')
}

help() {
  echo "Task.sh - Helper-Script for todotxt and punch"
  echo "The following options are available"
  echo "    start <num> - Starts tracking the specified task and prioritizes it to A"
  echo "    pause - Pauses tracking the current task"
  echo "    resume - Resumes tracking the current task"
  echo "    stop - Stops tracking the current task and prioritizes it to B"
  echo "    finish - Stops tracking the current task and dos it"
  echo "    help - Prints this message"
}

source ~/.bin/alias.zsh
main $@
