
ubuntu@ip-172-31-19-134:~$ touch notes.txt
ubuntu@ip-172-31-19-134:~$ echo "Redirection is useful for logs and configs" > notes.txt
ubuntu@ip-172-31-19-134:~$ echo "Day 06: Linux file practice" >> notes.txt
ubuntu@ip-172-31-19-134:~$ echo "Learning redirection using > and >>" >> notes.txt
ubuntu@ip-172-31-19-134:~$ echo "cat reads full file" >> notes.txt
ubuntu@ip-172-31-19-134:~$ echo "head reads from top" >> notes.txt
ubuntu@ip-172-31-19-134:~$ echo "tail reads from bottom" >> notes.txt
ubuntu@ip-172-31-19-134:~$ cat notes.txt 
Redirection is useful for logs and configs
Day 06: Linux file practice
Learning redirection using > and >>
cat reads full file
head reads from top
tail reads from bottom


ubuntu@ip-172-31-19-134:~$ head notes.txt 
Redirection is useful for logs and configs
Day 06: Linux file practice
Learning redirection using > and >>
cat reads full file
head reads from top
tail reads from bottom


ubuntu@ip-172-31-19-134:~$ tail notes.txt 
Redirection is useful for logs and configs
Day 06: Linux file practice
Learning redirection using > and >>
cat reads full file
head reads from top
tail reads from bottom


ubuntu@ip-172-31-19-134:~$ echo learning linux | tee notes.txt 
learning linux   
tee means print and save 

ubuntu@ip-172-31-19-134:~$ echo "Learning tee command" | tee -a notes.txt
Learning tee command
ubuntu@ip-172-31-19-134:~$ cat notes.txt 
learning linux
Learning tee command




