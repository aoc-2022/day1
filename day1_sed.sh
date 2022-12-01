#!/bin/bash
echo -n "Task 1 : "
cat input.txt | sed 's/[0-9]$/&+/;s/^$/X/' | xargs echo | tr X '
' | sed 's/+ *$//;s| ||g' | bc | sort -n | tail -1
echo -n "Task 2 : "
cat input.txt | sed 's/[0-9]$/&+/;s/^$/X/' | xargs echo | tr X '
' | sed 's/+ *$//;s| ||g' | bc | sort -n | tail -3 | xargs echo | tr \  + | bc
