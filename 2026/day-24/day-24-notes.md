# Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick

## Objective
Learn advanced Git operations such as Merge, Rebase, Squash Merge, Stash, and Cherry-pick to efficiently manage branches and collaborate in real-world development.

---

# Task 1 – Git Merge

## Fast-Forward Merge

### Steps Performed
1. Created a new branch `feature-login`.
2. Added commits to the branch.
3. Switched back to `master`.
4. Merged `feature-login` into `master`.

### Observation
Git performed a **Fast-Forward Merge** because no new commits were made on `master` after creating the branch.

### What is Fast-Forward Merge?
A Fast-Forward Merge occurs when the target branch has no new commits. Git simply moves the branch pointer forward without creating a new merge commit.

---

## Merge Commit

### Steps Performed
1. Created a new branch `feature-signup`.
2. Added commits to the branch.
3. Added another commit on `master`.
4. Merged `feature-signup` into `master`.

### Observation
Git created a **Merge Commit** because both branches had different commit histories.

### What is a Merge Commit?
A Merge Commit combines two different branch histories into one while preserving both histories.

---

## Merge Conflict

A Merge Conflict occurs when the same line of the same file is modified in two different branches and Git cannot automatically decide which change to keep.

Conflict markers:

```text
<<<<<<< HEAD
Current branch code
=======
Incoming branch code
>>>>>>> feature-branch
```

After resolving the conflict manually:

```bash
git add filename
git commit
```

---

# Task 2 – Git Rebase

## Steps Performed

1. Created `feature-dashboard`.
2. Added two commits.
3. Added another commit on `master`.
4. Switched back to `feature-dashboard`.
5. Executed:

```bash
git rebase master
```

## Observation

Git replayed my feature branch commits on top of the latest `master` branch.

The commit IDs changed because Git created new commits during replay.

---

## What is Rebase?

Rebase moves the commits of one branch onto another branch by replaying them one by one.

---

## Merge vs Rebase

### Merge

- Preserves complete branch history.
- Creates a merge commit.
- History becomes non-linear.

### Rebase

- Creates a clean and linear history.
- Rewrites commit history.
- Creates new commit IDs.

---

## Why should we not rebase shared commits?

Rebase changes commit IDs.

If commits have already been pushed and shared with other developers, rebasing can create conflicts and duplicate histories for collaborators.

---

## When to use Rebase?

- Before merging a feature branch.
- To maintain a clean Git history.
- On local branches only.

---

# Task 3 – Squash Merge

## Steps Performed

1. Created `feature-profile`.
2. Added multiple small commits.
3. Merged using:

```bash
git merge --squash feature-profile
```

4. Created a single commit.

---

## Observation

Although the feature branch had multiple commits, only one commit was added to `master`.

---

## What is Squash Merge?

Squash Merge combines multiple commits into one single commit before merging.

---

## Advantages

- Cleaner commit history.
- Easy to review.
- Removes unnecessary intermediate commits.

---

## Trade-Off

Individual commit history is lost after squashing.

---

# Task 4 – Git Stash

## Steps Performed

1. Modified a file.
2. Tried switching branches.
3. Git prevented switching because of uncommitted changes.
4. Saved changes using:

```bash
git stash
```

5. Switched branches.
6. Returned and restored changes using:

```bash
git stash pop
```

---

## What is Git Stash?

Git Stash temporarily stores uncommitted changes without creating a commit.

It allows switching branches safely.

---

## Difference between Pop and Apply

### git stash pop

- Restores the stash.
- Removes the stash entry.

### git stash apply

- Restores the stash.
- Keeps the stash entry for future use.

---

## Real-world Use Case

Suppose a developer is working on a feature.

Suddenly a production issue occurs.

Instead of committing incomplete work, the developer can:

```bash
git stash
git switch master
```

Fix the production issue.

Return to the feature branch.

Restore work:

```bash
git stash pop
```

---

# Task 5 – Cherry-pick

## Steps Performed

1. Created branch `feature-hotfix`.
2. Added multiple commits.
3. Switched to `master`.
4. Applied only one commit using:

```bash
git cherry-pick <commit-id>
```

---

## What is Cherry-pick?

Cherry-pick copies a specific commit from one branch to another.

---

## Real-world Use Case

Suppose a feature branch contains multiple commits.

Only one commit fixes a critical production bug.

Instead of merging the entire branch, only that bug fix can be copied using Cherry-pick.

---

## What can go wrong?

- Merge conflicts.
- Duplicate commits.
- Confusing history if used excessively.

---

# Commands Practiced

```bash
git branch
git switch
git checkout
git merge
git merge --squash
git rebase
git stash
git stash list
git stash pop
git stash apply
git cherry-pick
git log --oneline
git log --oneline --graph --all --decorate
git status
```

---

# Key Learnings

- Fast-Forward Merge moves the branch pointer.
- Merge Commit preserves branch history.
- Rebase creates a linear history.
- Squash Merge combines multiple commits into one.
- Git Stash temporarily saves unfinished work.
- Cherry-pick copies only selected commits.
- Git Log helps visualize commit history.
- Understanding these Git operations is essential for collaborative software development.

---

# Conclusion

Day 24 helped me understand advanced Git workflows used in professional software development. I practiced Merge, Rebase, Squash Merge, Stash, and Cherry-pick, and learned when each technique should be used to maintain a clean and efficient Git history.
