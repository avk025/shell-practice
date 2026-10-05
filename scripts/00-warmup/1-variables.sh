#!/bin/bash
# WARMUP 1: Variables
# Fill in the blanks marked ___ so the output matches what's shown below.
#
# Expected output when you run this correctly:
#   Service: billing
#   Version: 2.1.0
#   Full: billing-2.1.0

SERVICE=___        # put the word: billing
VERSION=___         # put the word: 2.1.0

echo "Service: $SERVICE"
echo "Version: $VERSION"
echo "Full: ${SERVICE}-${VERSION}"
