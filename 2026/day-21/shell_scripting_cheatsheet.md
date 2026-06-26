# 🐚 Shell Scripting Cheat Sheet

> **Day 21 - 90 Days of DevOps**
>
> A quick reference guide for Bash/Shell scripting.

---

# 📌 Quick Reference Table

| Topic      | Key Syntax               | Example                            |
| ---------- | ------------------------ | ---------------------------------- |
| Variable   | `VAR="value"`            | `NAME="DevOps"`                    |
| Argument   | `$1`, `$2`               | `./script.sh file.txt`             |
| If         | `if [ condition ]; then` | `if [ -f file ]; then`             |
| For Loop   | `for i in list; do`      | `for i in 1 2 3; do`               |
| While Loop | `while condition; do`    | `while read line; do`              |
| Function   | `name() {}`              | `greet() { echo "Hi"; }`           |
| Grep       | `grep pattern file`      | `grep -i error log.txt`            |
| Awk        | `awk '{print $1}' file`  | `awk -F: '{print $1}' /etc/passwd` |
| Sed        | `sed 's/old/new/g'`      | `sed -i 's/foo/bar/g' file`        |

---

# 1. Basics

## Shebang

Tells Linux which interpreter should execute the script.

```bash
#!/bin/bash
```

---

## Running a Script

Make executable:

```bash
chmod +x script.sh
```

Run:

```bash
./script.sh
```

Or without execute permission:

```bash
bash script.sh
```

---

## Comments

Single-line comment

```bash
# This is a comment
```

Inline comment

```bash
echo "Hello"   # Prints Hello
```

---

## Variables

Declare

```bash
NAME="Atharv"
```

Use

```bash
echo $NAME
echo "$NAME"
echo '$NAME'
```

Output

```
Atharv
Atharv
$NAME
```

---

## Read User Input

```bash
read NAME
echo "Hello $NAME"
```

Prompt

```bash
read -p "Enter your name: " NAME
```

---

## Command-Line Arguments

```bash
$0    Script name
$1    First argument
$2    Second argument
$#    Number of arguments
$@    All arguments
$?    Exit status
```

Example

```bash
./test.sh file1 file2
```

---

# 2. Operators & Conditionals

## String Comparison

```bash
[ "$A" = "$B" ]
[ "$A" != "$B" ]
[ -z "$A" ]
[ -n "$A" ]
```

---

## Integer Comparison

```bash
-eq
-ne
-lt
-gt
-le
-ge
```

Example

```bash
if [ "$AGE" -ge 18 ]; then
    echo "Adult"
fi
```

---

## File Tests

```bash
-f file     Regular file
-d dir      Directory
-e file     Exists
-r file     Readable
-w file     Writable
-x file     Executable
-s file     Not empty
```

---

## If Else

```bash
if [ condition ]; then
    commands
elif [ condition ]; then
    commands
else
    commands
fi
```

---

## Logical Operators

```bash
&&
||
!
```

Example

```bash
[ -f file ] && echo "Exists"

[ -f file ] || echo "Missing"

! [ -f file ]
```

---

## Case Statement

```bash
case $choice in

1)
echo "Start"
;;

2)
echo "Stop"
;;

*)
echo "Invalid"
;;

esac
```

---

# 3. Loops

## For Loop

List style

```bash
for i in 1 2 3
do
    echo $i
done
```

C Style

```bash
for ((i=1;i<=5;i++))
do
    echo $i
done
```

---

## While Loop

```bash
COUNT=1

while [ $COUNT -le 5 ]
do
    echo $COUNT
    ((COUNT++))
done
```

---

## Until Loop

Runs until condition becomes true.

```bash
COUNT=1

until [ $COUNT -gt 5 ]
do
    echo $COUNT
    ((COUNT++))
done
```

---

## Break

```bash
break
```

---

## Continue

```bash
continue
```

---

## Loop Through Files

```bash
for file in *.log
do
    echo "$file"
done
```

---

## Read Command Output

```bash
cat file.txt | while read line
do
    echo "$line"
done
```

---

# 4. Functions

## Define Function

```bash
greet() {

echo "Hello"

}
```

---

## Call Function

```bash
greet
```

---

## Function Arguments

```bash
greet() {

echo "Hello $1"

}

greet Atharv
```

---

## Return vs Echo

Return

```bash
return 0
```

Echo

```bash
echo "Result"
```

---

## Local Variables

```bash
demo(){

local NAME="Linux"

echo $NAME

}
```

---

# 5. Text Processing Commands

## grep

```bash
grep error file.log
grep -i error file.log
grep -r error .
grep -c error file.log
grep -n error file.log
grep -v error file.log
grep -E "ERROR|FAIL" file.log
```

---

## awk

Print first column

```bash
awk '{print $1}' file
```

Field separator

```bash
awk -F: '{print $1}' /etc/passwd
```

BEGIN END

```bash
awk 'BEGIN{print "Start"} {print $1} END{print "Done"}' file
```

---

## sed

Replace

```bash
sed 's/apple/orange/g' file
```

Delete line

```bash
sed '2d' file
```

Edit file

```bash
sed -i 's/old/new/g' file
```

---

## cut

```bash
cut -d: -f1 /etc/passwd
```

---

## sort

```bash
sort file
sort -n file
sort -r file
sort -u file
```

---

## uniq

```bash
uniq file
uniq -c file
```

---

## tr

Lowercase to uppercase

```bash
echo "linux" | tr a-z A-Z
```

Delete characters

```bash
tr -d ','
```

---

## wc

```bash
wc file
wc -l file
wc -w file
wc -c file
```

---

## head & tail

```bash
head file
head -5 file

tail file
tail -10 file

tail -f log.txt
```

---

# 6. Useful One-Liners

Delete files older than 7 days

```bash
find . -type f -mtime +7 -delete
```

Count lines in all log files

```bash
wc -l *.log
```

Replace text in multiple files

```bash
sed -i 's/old/new/g' *.txt
```

Check service status

```bash
systemctl is-active nginx
```

Disk usage alert

```bash
df -h | awk '$5+0 > 80'
```

Parse JSON

```bash
jq '.name' file.json
```

Watch log errors

```bash
tail -f app.log | grep ERROR
```

---

# 7. Error Handling & Debugging

## Exit Codes

```bash
echo $?

exit 0

exit 1
```

---

## Exit on Error

```bash
set -e
```

---

## Error on Unset Variables

```bash
set -u
```

---

## Pipe Failure Detection

```bash
set -o pipefail
```

---

## Debug Mode

```bash
set -x
```

Disable

```bash
set +x
```

---

## Trap

```bash
cleanup(){

echo "Cleaning..."

}

trap cleanup EXIT
```

---

# ⭐ Best Practices

* Always start with `#!/bin/bash`
* Quote variables: `"$VAR"`
* Use meaningful variable names
* Check exit status using `$?`
* Use functions for reusable code
* Enable debugging with `set -x`
* Use `set -euo pipefail` for safer scripts
* Comment complex logic
* Test scripts before production

---

# 🚀 Common Script Template

```bash
#!/bin/bash

set -euo pipefail

cleanup() {
    echo "Cleaning up..."
}

trap cleanup EXIT

echo "Script Started"

read -p "Enter your name: " NAME

if [ -n "$NAME" ]; then
    echo "Welcome $NAME"
else
    echo "No name entered"
fi

echo "Script Completed"
```

---

## 📚 Quick Revision

* Variables → `VAR=value`
* Arguments → `$1 $2 $# $@`
* Condition → `if [ ]`
* Loops → `for`, `while`, `until`
* Functions → `name() {}`
* Search → `grep`
* Columns → `awk`
* Replace → `sed`
* Count → `wc`
* Sort → `sort`
* Debug → `set -x`
* Safe Script → `set -euo pipefail`



