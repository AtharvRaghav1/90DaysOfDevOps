ubuntu@ip-172-31-19-134:~$ touch devops.txt
ubuntu@ip-172-31-19-134:~$ ls
batch.txt  cloud  day  day6  devops  devops.txt  jh.txt  nginx.txt  notes.txt  workspace
ubuntu@ip-172-31-19-134:~$ ls -l
total 36
-rw-rw-r-- 1   1002 ubuntu   21 Feb  3 14:54 batch.txt
drwxrwxr-x 2 ubuntu ubuntu 4096 Jan 31 12:14 cloud
drwxrwxr-x 2 ubuntu ubuntu 4096 Feb  3 11:35 day
drwxrwxr-x 2 ubuntu ubuntu 4096 Feb  3 11:36 day6
drwxrwxr-x 2 ubuntu ubuntu 4096 Jan 31 12:10 devops
-rw-rw-r-- 1 ubuntu ubuntu    0 Feb  5 14:56 devops.txt
-rw-rw-r-- 1 ubuntu ubuntu   12 Feb  3 14:49 jh.txt
-rw-rw-r-- 1 ubuntu ubuntu 3422 Feb  4 15:05 nginx.txt
-rw-rw-r-- 1 ubuntu ubuntu   15 Feb  3 15:16 notes.txt
drwxrwxr-x 2 ubuntu ubuntu 4096 Feb  5 11:47 workspace

ubuntu@ip-172--19-134:~$ vim script.sh
ubuntu@ip-172-31-19-134:~$ cat script.sh
"hello devops"

ubuntu@ip-172-31-19-134:~$ head -n 5 /etc/passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync

ubuntu@ip-172-31-19-134:~$ tail -n 5 /etc/passwd
dnsmasq:x:999:65534:dnsmasq:/var/lib/misc:/usr/sbin/nologin
professor:x:1004:1004::/home/professor:/bin/sh
berlin:x:1005:1005::/home/berlin:/bin/sh
tokio:x:1006:1006::/home/tokio:/bin/sh
nairobi:x:1007:1009::/home/nairobi:/bin/sh

ubuntu@ip-172-31-19-134:~$ ls -l devops.txt notes.txt
-rw-rw-r-- 1 ubuntu ubuntu  0 Feb  5 14:56 devops.txt
-rw-rw-r-- 1 ubuntu ubuntu 41 Feb  5 14:58 notes.txt

ubuntu@ip-172-31-19-134:~$ chmod +x script.sh
ubuntu@ip-172-31-19-134:~$ ls -l script.sh
-rwxrwxr-x 1 ubuntu ubuntu 15 Feb  5 15:01 script.sh

ubuntu@ip-172-31-19-134:~$ chmod 777 script.sh
-rwxrwxrwx 1 ubuntu ubuntu 15 Feb  5 15:01 script.sh

ubuntu@ip-172-31-19-134:~$ chmod a-w devops.txt
ubuntu@ip-172-31-19-134:~$ ls -l devops.txt
-r--r--r-- 1 ubuntu ubuntu 0 Feb  5 14:56 devops.txt

ubuntu@ip-172-31-19-134:~$ chmod 640 notes.txt
ubuntu@ip-172-31-19-134:~$ ls -l notes.txt
-rw-r----- 1 ubuntu ubuntu 41 Feb  5 14:58 notes.txt

ubuntu@ip-172-31-19-134:~$ mkdir project
ubuntu@ip-172-31-19-134:~$ chmod 755 project
ubuntu@ip-172-31-19-134:~$ ls -ld project/
drwxr-xr-x 2 ubuntu ubuntu 4096 Feb  5 15:29 project/

ubuntu@ip-172-31-19-134:~$ ls -l devops.txt
-r--r--r-- 1 ubuntu ubuntu 0 Feb  5 14:56 devops.txt
ubuntu@ip-172-31-19-134:~$ echo test >devops.txt
-bash: devops.txt: Permission denied

