#!/bin/bash
set -euo pipefail

FILE="${1:?Usage: $0 <file>}"

echo "--- BROKEN: for \$(cat file) splits on words, not lines ---"
for word in $(cat "$FILE"); do
  echo "word: $word"
done

echo ""
echo "--- CORRECT: while IFS= read -r line ---"
while IFS= read -r line; do
  echo "line: $line"
done < "$FILE"

echo ""
echo "--- ARRAY VERSION: mapfile ---"
mapfile -t lines < "$FILE"
for line in "${lines[@]}"; do
  echo "line: $line"
done
