#!/bin/bash
# WARMUP 3: Loop
# Fill in the blanks to loop over 3 service names and print each one.
#
# Expected output:
#   Checking: auth
#   Checking: billing
#   Checking: inventory

for service in auth ___ ___ ; do      # fill in the two missing service names
  echo "Checking: $service"
___                                     # fill in: the keyword that closes a for loop
