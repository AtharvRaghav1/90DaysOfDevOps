Owner - user who owns the file
Group - group that owns the file

(<ls -l output.png>)

owner change from ubuntu to tokio
(1.png)

owner change from tokio to berlin
(2.png)


Change group from ubuntu to team-heist

(<3.png>)

Change owner as well as group

(<4.png)

Change group and owner of directory

(5.png)

Recursive ownership and group change

(6.png)


creation of directory and ownership change

(7.png)


# Day 11 Challenge

## Files & Directories Created
- devops-file.txt
- team-notes.txt
- project-config.yaml
- app-logs/
- heist-project/
- bank-heist/

## Ownership Changes
- devops-file.txt: ubuntu → tokyo → berlin
- team-notes.txt: group → heist-team
- project-config.yaml: professor:heist-team
- heist-project/: professor:planners
- bank-heist files with different owners/groups

## Commands Used
- ls -l
- chown
- chgrp
- chown -R

## What I Learned
1. Owner controls file ownership
2. Group enables shared access
3. Recursive ownership is critical for directories
