# Exercises — Part 1: Basics

Do these in order. Each should end in a commit on its own branch.

## Exercise 1 — Fix a broken script
`scripts/01-basics/health-check.sh` doesn't log anything if `curl` itself
fails (bad DNS, host down) — it just shows status `000` on repeat.
**Task:** add a clear message distinguishing "got a bad HTTP status" from
"couldn't reach the host at all."

## Exercise 2 — Add a flag
Extend `disk-alert.sh` to accept the threshold as an argument instead of a
hardcoded `80`, with `80` as the default if no argument is given.
Hint: `THRESHOLD="${1:-80}"`

## Exercise 3 — Write one from scratch
Write `scripts/01-basics/backup-check.sh` that:
- takes a directory path as an argument
- checks if it contains any file modified in the last 24 hours
- exits 0 with "backup found" if yes, exits 1 with "no recent backup" if no

Use `find <dir> -mtime -1` for this.

## Exercise 4 — Line-by-line practice
Run `read-lines-safely.sh scripts/01-basics/services.txt` and confirm you
see the word-splitting bug happen live. Then add a third loop style to the
script: read the file into a bash array (`mapfile -t lines < file`) and
print each element — a third way of handling the same problem.

## Exercise 5 — Git workflow
For each exercise above:
```bash
git checkout -b exercise/0X-description
# make changes
git add .
git commit -m "Exercise X: <what you did>"
git push -u origin exercise/0X-description
```
Then merge into `main` yourself (via GitHub PR or `git merge` locally).
