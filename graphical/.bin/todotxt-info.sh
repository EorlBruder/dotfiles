#!/bin/sh

open_tasks=$(($(todo.sh listpri | wc -l)-2))

echo "total: $open_tasks"

