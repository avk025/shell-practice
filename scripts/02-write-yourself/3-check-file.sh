#!/bin/bash
# EXERCISE 3: Check if a file exists
#
# Write a script that takes a file path as the first argument and prints
# whether it exists.
#
# Run it like:
#   ./3-check-file.sh services.txt
#   ./3-check-file.sh ghost.txt
#
# Expected output:
#   ./3-check-file.sh services.txt   -> "services.txt exists"
#   ./3-check-file.sh ghost.txt      -> "ghost.txt does not exist"
#
# Hints:
# - $1 is the first argument
# - the file test is: -f "$1"   (you used this exact test in Part 1, section 3)
# - remember 2-if-statement.sh's if/else structure

# Write your script below:
if [ -f "$1" ]; then
	echo "$1 exists"
else
	echo "$1 does not exist"
fi

