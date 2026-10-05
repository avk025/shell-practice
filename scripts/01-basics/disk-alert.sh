#!/bin/bash
set -euo pipefail

THRESHOLD="${1:-80}"
USAGE=$(df / | tail -1 | awk '{print $6}' | tr -d '%')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "WARNING: disk usage at ${USAGE}% (threshold ${THRESHOLD}%)"
  exit 1
else
  echo "OK: disk usage at ${USAGE}%"
fi
