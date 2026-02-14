first script
-hello.sh

ubuntu@ip-172-31-19-134:~$ vim hello.sh
ubuntu@ip-172-31-19-134:~$ chmod 764 hello.sh
ubuntu@ip-172-31-19-134:~$ ./hello.sh
hello,devops

variable.sh
ubuntu@ip-172-31-19-134:~$ vim variables.sh
ubuntu@ip-172-31-19-134:~$ chmod 764 variables.sh
ubuntu@ip-172-31-19-134:~$ ./variables.sh
hello, i am atharv and i am devops engineer

greet.sh

ubuntu@ip-172-31-19-134:~$ vim greet.sh
ubuntu@ip-172-31-19-134:~$ chmod 764 greet.sh
ubuntu@ip-172-31-19-134:~$ ./greet.sh
enter your name:raghav
enter your favourite tool:terraform
my name is raghav and my favourite tool is terraform

check_number.sh
ubuntu@ip-172-31-19-134:~$ vim check_number.sh
ubuntu@ip-172-31-19-134:~$ chmod 764 check_number.sh
ubuntu@ip-172-31-19-134:~$ ./check_number.sh
enter a number:10
positive
ubuntu@ip-172-31-19-134:~$ ./check_number.sh
enter a number:-9
negative
ubuntu@ip-172-31-19-134:~$ ./check_number.sh
enter a number:0
zero

check_file.sh

ubuntu@ip-172-31-19-134:~$ vim file_check.sh
ubuntu@ip-172-31-19-134:~$ chmod file_check.sh
ubuntu@ip-172-31-19-134:~$ ./file_check.sh
enter the file name: file1.txt
file exist
ubuntu@ip-172-31-19-134:~$ ./file_check.sh
enter the file name: file7.txt
file does not exist

server_check.sh
ubuntu@ip-172-31-19-134:~$ vim server_check.sh
ubuntu@ip-172-31-19-134:~$ chmod 764 server_check.sh
ubuntu@ip-172-31-19-134:~$ ./server_check.sh
Do you want to check the status of sshd? (y/n): y
sshd is NOT ACTIVE
ubuntu@ip-172-31-19-134:~$ ./server_check.sh
Do you want to check the status of sshd? (y/n): n
Skipped.
ubuntu@ip-172-31-19-134:~$

What I Learned -

Shebang (#!/bin/bash) defines the interpreter

Variables must not have spaces around =

If-else syntax must end with fi

