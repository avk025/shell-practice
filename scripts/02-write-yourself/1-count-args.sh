#!/bin/bash
# EXERCISE 1: Count and list arguments
#
# Write a script that:
#   1. Prints how many arguments were passed
#   2. Prints each argument on its own line, numbered
#
# Run it like:
#   ./1-count-args.sh auth billing inventory
#
# Expected output:
#   You passed 3 arguments:
#   1: auth
#   2: billing
#   3: inventory
#
# Hints (only look if stuck):
# - $# gives you the number of arguments
# - $@ gives you all arguments, usable in a for loop: for arg in "$@"
# - you'll need a counter variable that increases each loop (like 3-loop.sh
#   used a fixed list, but here you also need to track a number)

# Write your script below:
echo "You passed "$#" aruguments" 
i=1

for arg in "$@"; do
	echo "$i : $arg"
	((i++))
done
