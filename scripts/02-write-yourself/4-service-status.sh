#!/bin/bash
# EXERCISE 4: Service status (combines loop + if)
#
# Write a script that loops over these three services: auth, billing,
# inventory — and for each one, prints "critical" if the name is
# "billing", otherwise prints "standard".
#
# Expected output:
#   auth: standard
#   billing: critical
#   inventory: standard
#
# Hints:
# - this is 3-loop.sh's for loop, with 2-if-statement.sh's if/else
#   INSIDE the loop body
# - structure looks like:
#     for service in ...; do
#       if [ "$service" == "billing" ]; then
#         ...
#       else
#         ...
#       fi
#     done

# Write your script below:

for service in $@; do
	if [ "$service" == "billing" ]; then
		echo "$service : critical"
	else
		echo "$service : standard"
	fi
done

