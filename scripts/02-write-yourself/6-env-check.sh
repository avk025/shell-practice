#!/bin/bash
# EXERCISE 6: Environment checker (hardest so far -- combines everything)
#
# Write a function called "check_env" that takes one argument (an
# environment name). It should:
#   - if the argument is "prod", print "STOP: deploying to production!"
#   - if the argument is "staging", print "Caution: staging deploy"
#   - for anything else, print "OK: safe to deploy to <name>"
#
# Then call it 3 times: check_env "prod", check_env "staging",
# check_env "dev"
#
# Expected output:
#   STOP: deploying to production!
#   Caution: staging deploy
#   OK: safe to deploy to dev
#
# Hints:
# - this needs if / elif / else (elif = "else if", lets you check a
#   second condition) -- new syntax, not used in earlier warmups:
#     if [ "$1" == "prod" ]; then
#       ...
#     elif [ "$1" == "staging" ]; then
#       ...
#     else
#       ...
#     fi

# Write your script below:
#
check_env() {

	 if [ "$1" == "prod" ]; then
		 echo " STOP: deploying to production! "
	 elif [ "$1" == "staging" ]; then
		 echo " Caution: staging deploy "
	 else
		 echo " OK : safe to deploy to dev "
	 fi

}

check_env prod 
check_env staging 
check_env qa
