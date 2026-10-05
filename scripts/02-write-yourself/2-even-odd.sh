#!/bin/bash
# EXERCISE 2: Even or odd
#
# Write a script that loops from 1 to 10 and prints whether each number
# is even or odd.
#
# Expected output:
#   1 is odd
#   2 is even
#   3 is odd
#   4 is even
#   ... (continues to 10)
#
# Hints:
# - use: for i in $(seq 1 10); do ... done   OR   for i in {1..10}; do ... done
# - to check even/odd, use the modulo operator: $((i % 2))
#   if that equals 0, it's even, otherwise it's odd
# - example: if [ $((i % 2)) -eq 0 ]; then ... fi

# Write your script below:
for i in {1..10};do
	if [ $((i % 2)) -eq 0 ]; then
	echo "$i is even"
        else
	echo "$i is odd"
	fi
done

