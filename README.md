# Shell Scripting Practice — DevOps Refresh

Hands-on repo to go with the Shell Scripting for DevOps training. Push this
to your own GitHub so you get real git + shell reps together.

## 1. Push this to GitHub (do this yourself — it's the point)

```bash
cd shell-practice
git init
git add .
git commit -m "Initial commit: shell scripting practice repo"

# Create an empty repo on github.com first (no README/gitignore), then:
git remote add origin git@github.com:<your-username>/shell-practice.git
# or with HTTPS + a PAT:
# git remote add origin https://github.com/<your-username>/shell-practice.git

git branch -M main
git push -u origin main
```

## 2. Structure

```
scripts/01-basics/     working scripts from Part 1
exercises/EXERCISES.md tasks to modify/extend the scripts yourself
```

## 3. Suggested workflow (mirrors real DevOps work)

1. Pick an exercise from `exercises/EXERCISES.md`.
2. Create a branch: `git checkout -b exercise/01-retry-logic`
3. Edit the script, run it, verify output.
4. Commit + push the branch, open a PR against `main` (even solo — practice
   writing a PR description like you would at work).
5. Merge, delete the branch, pull `main` again.

This gets you reps on: git branching, `chmod +x`, running/debugging scripts,
and commit hygiene — all in one loop.

## 4. Run scripts locally

```bash
chmod +x scripts/01-basics/*.sh
./scripts/01-basics/health-check.sh https://example.com
./scripts/01-basics/disk-alert.sh
```
# Practiced the branch -> PR -> merge workflow
