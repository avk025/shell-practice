#!/bin/bash
# WARMUP 2: If statement
# Fill in the blanks so this checks if the first argument equals "prod".
#
# Run it two ways and check the output:
#   ./2-if-statement.sh prod   -> should print: This is production, be careful!
#   ./2-if-statement.sh dev    -> should print: This is dev, safe to test.

ENV="$1"

if [ "$ENV" ___ "prod" ]; then     # fill in the comparison operator (hint: it's 2 characters)
  echo "This is production, be careful!"
___                                  # fill in: the keyword that means "otherwise"
  echo "This is dev, safe to test."
fi
