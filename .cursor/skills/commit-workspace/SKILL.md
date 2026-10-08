---
name: commit-workspace
description: Reviews uncommitted changes in every Git repo in the workspace, starting with the top-level repo and then each nested repo, then commits and pushes each one. Use when the user runs /commit-workspace or asks to commit and push all repos.
disable-model-invocation: true
---

# Commit Workspace

Commit and push changes in every Git repo under the workspace root, top first.

## 1. Find the repos

Run from the workspace root, skipping `node_modules`:

```powershell
Get-ChildItem . -Recurse -Directory -Filter .git -Force -ErrorAction SilentlyContinue |
  Where-Object { $_.FullName -notmatch 'node_modules' } |
  ForEach-Object { $_.Parent.FullName } | Sort-Object
```

Order: the workspace root repo first, then nested repos sorted by path. Nested repos are usually gitignored by the root repo (for example `repos/`). Never `git add` a nested repo's folder from the root repo.

## 2. For each repo, in order

1. `git status --short` and `git branch --show-current`. If there are no changes, report "clean" and move on.
2. Review the changes with `git diff` (and read new untracked files). Do not commit blindly.
3. Exclude from the commit: `.env*` files (except `.env.example`), `node_modules/`, `dist/`, build output, logs, and anything that looks like a secret or token. If any of these is untracked and not ignored, tell the user instead of adding it to `.gitignore` silently.
4. Branch: if the current branch is `main` or `master`, create a branch named `AB#YYYYMMDD_short_topic` (the convention in this workspace) before committing. Otherwise stay on the current branch.
5. Stage specific paths (`git add <paths>`). Avoid `git add -A` unless the review in step 2 shows every change belongs.
6. Commit with a short imperative message describing why, matching the repo's recent `git log --oneline -5` style. Split unrelated changes into separate commits.
7. Push: `git push -u origin <branch>`. Never force-push.

## 3. Report

End with one line per repo: path, branch, commit hash and message (or "clean"), pushed yes/no. For each newly pushed non-default branch, include the GitHub link `https://github.com/<owner>/<repo>/pull/new/<branch URL-encoded>`. Do not open PRs unless the user asks.

If a step fails (push rejected, merge conflict, no remote), stop on that repo, report why, and continue with the next repo.
