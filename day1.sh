#!/bin/bash

sums () { 
	cat input.txt | awk 'BEGIN { ACC=0 }
	/^$/ { print ACC; ACC=0}
	/[0-9]/ { ACC=ACC+$1; }
	END { print ACC }' | sort -n
}

echo "Task 1 : $(sums | tail -1)"
echo "Task 2 : $(sums | tail -3 | xargs echo | tr \  + | bc)"
