# Git Commands Cheat Sheet

## Setup & Configuration

### git --version
Purpose: Displays the installed Git version.

Example:
bash
git --version


### git config --global user.name
Purpose: Sets your Git username.

Example:
bash
git config --global user.name "Atharv Raghav"


### git config --global user.email
Purpose: Sets your Git email address.

Example:
bash
git config --global user.email "your-email@gmail.com"


### git config --list
Purpose: Displays the current Git configuration.

Example:
bash
git config --list


## Basic Workflow

### git init
Purpose: Creates a new Git repository.

Example:
bash
git init

### git status
Purpose: Shows the current status of the repository.

Example:
bash
git status



## Viewing Changes

### git diff

Purpose: Shows the changes made in the working directory that have not been staged.

Example:
bash
git diff


### git log

Purpose: Displays the complete commit history.

Example:
bash
git log


### git log --oneline

Purpose: Displays commit history in a compact one-line format.

Example:
bash
git log --oneline


## Branch Commands

### git branch

Purpose: Lists all local branches.

Example:
bash
git branch


### git branch branch-name

Purpose: Creates a new branch.

Example:
bash
git branch feature-login


### git checkout branch-name

Purpose: Switches to another branch.

Example:
bash
git checkout feature-login


## File Management Commands

### git restore

Purpose: Restores a file to the last committed version.

Example:
bash
git restore file.txt


### git rm

Purpose: Removes a tracked file from Git.

Example:
bash
git rm file.txt


