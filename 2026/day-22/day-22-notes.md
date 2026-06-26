# Day 22 - Introduction to Git Notes

## 1. What is the difference between git add and git commit?

- git add moves changes from the working directory to the staging area.
- git commit saves the staged changes permanently in the Git repository with a commit message.

---

## 2. What does the staging area do? Why doesn't Git commit directly?

The staging area is a temporary place where you prepare the changes that should be included in the next commit. It allows you to review and organize changes before saving them permanently.

---

## 3. What information does git log show you?

git log displays:
- Commit ID (SHA hash)
- Author name
- Author email
- Date and time
- Commit message

---

## 4. What is the .git folder and what happens if you delete it?

The .git folder stores the complete Git repository, including commit history, branches, tags, and configuration. If you delete it, the directory is no longer a Git repository and all version history is lost.

---

## 5. What is the difference between a working directory, staging area, and repository?

### Working Directory
The files you are currently creating or editing.

### Staging Area
A temporary area where selected changes are prepared before committing.

### Repository
The permanent database where Git stores all committed versions and project history.
