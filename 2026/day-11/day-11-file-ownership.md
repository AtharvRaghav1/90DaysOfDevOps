
## ls -l output
![ls output](ls-output.png)

## Owner change from ubuntu to tokio
![Owner change 1](owner-change-1.png)

## Owner change from tokio to berlin
![Owner change 2](owner-change-2.png)

## Change group from ubuntu to team-heist
![Group change](group-change.png)

## Change owner as well as group
![Owner and group change](owner-group-change.png)

## Change group and owner of directory
![Directory ownership change](directory-ownership.png)

## Recursive ownership and group change
![Recursive ownership change](recursive-change.png)



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

