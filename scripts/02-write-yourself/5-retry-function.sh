#!/bin/bash
# EXERCISE 5: Retry counter (combines function + loop)
#
# Write a function called "retry" that takes one argument: the maximum
# number of retries. It should loop from 1 up to that number, printing
# "Attempt N of MAX" each time.
#
# Then call the function once with 3, like: retry 3
#
# Expected output (for retry 3):
#   Attempt 1 of 3
#   Attempt 2 of 3
#   Attempt 3 of 3
#
# Hints:
# - function structure from 4-function.sh: name() { ... }
# - inside the function, $1 is the max retries passed in
# - loop using: for i in $(seq 1 "$1"); do ... done
# - remember $1 inside the loop's echo refers to the function's argument,
#   not the loop variable -- you'll want to save it to a named variable
#   first, e.g. MAX="$1", to avoid confusion



retry() {
 MAX="$1"
 for i in $(seq 1 "$MAX"); do
	 echo "Attempt $i of $MAX"
 done
}

retry 20
