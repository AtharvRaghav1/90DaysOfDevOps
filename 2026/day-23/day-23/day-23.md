# Day 23 - Git Branching & GitHub

## 1. What is a branch in Git?

A branch is an independent line of development that allows you to work on new features or fixes without affecting the main code.

---

## 2. Why do we use branches instead of committing everything to main?

- Keeps the main branch stable
- Allows multiple developers to work simultaneously
- Makes testing safer
- Makes code review easier

---

## 3. What is HEAD in Git?

HEAD is a pointer that refers to the current branch or the latest commit you are working on.

Example:

HEAD → main

---

## 4. What happens when you switch branches?

Git updates your working directory to match the selected branch.

Files that belong only to another branch disappear, and files from the selected branch appear.

---

## 5. Difference between origin and upstream

origin:
Your own GitHub repository.

upstream:
The original repository from which your fork was created.

---

## 6. Difference between git fetch and git pull

git fetch:
Downloads new commits but does not merge them.

git pull:
Downloads and automatically merges changes.

---

## 7. Difference between Clone and Fork

Clone:
Creates a local copy of any repository.

Fork:
Creates your own copy of someone else's repository on GitHub.

---

## 8. When should you use Clone?

Use clone when you have direct access to the repository.

---

## 9. When should you use Fork?

Use fork when contributing to someone else's project.

---

## 10. How do you keep a fork updated?


git remote add upstream <original-repository-url>
git fetch upstream
git merge upstream/main
git push origin main

# Branch Commands

## Show branches


git branch


## Create branch


git branch feature-1


## Switch branch


git switch feature-1


## Create and switch


git switch -c feature-2


## Delete branch


git branch -d feature-2


## Push branch


git push -u origin feature-1


## Fetch


git fetch


## Pull


git pull

