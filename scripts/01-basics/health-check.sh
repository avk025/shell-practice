#!/bin/bash
set -euo pipefail

# Usage: ./health-check.sh <url>
URL="${1:?Usage: $0 <url>}"
MAX_RETRIES=5

for attempt in $(seq 1 "$MAX_RETRIES"); do
  status=$(curl -s -o /dev/null -w "%{http_code}" "$URL" || echo "000")
  if [ "$status" == "000" ]; then
    echo "Attempt $attempt: could not reach $URL at all (DNS/network issue)"
  elif [ "$status" == "200" ]; then
    echo "Service healthy (attempt $attempt)"
    exit 0
  else
    echo "Attempt $attempt: reached host but got status $status"
  fi
  sleep 2

done

echo "Service did not become healthy" >&2
exit 1
