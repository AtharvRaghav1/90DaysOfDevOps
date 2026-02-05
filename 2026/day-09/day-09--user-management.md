ubuntu@ip-172-31-19-134:~$ sudo useradd tokio
ubuntu@ip-172-31-19-134:~$ passwd tokio
passwd: You may not view or modify password information for tokio.
ubuntu@ip-172-31-19-134:~$ sudo passwd tokio
New password:
Retype new password:
passwd: password updated successfully
ubuntu@ip-172-31-19-134:~$ sudo useradd berlin
ubuntu@ip-172-31-19-134:~$ sudo passwd berlin
New password:
Retype new password:
passwd: password updated successfully
ubuntu@ip-172-31-19-134:~$ sudo useradd professor
ubuntu@ip-172-31-19-134:~$ sudo passwd professor
New password:
Retype new password:
passwd: password updated successfully
ubuntu@ip-172-31-19-134:~$


ubuntu@ip-172-31-19-134:/home$ ls
berlin  professor  tokio  ubuntu


ubuntu@ip-172-31-19-134:~$ cat /etc/group
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog,ubuntu
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:
fax:x:21:
voice:x:22:
cdrom:x:24:ubuntu
floppy:x:25:
tape:x:26:
sudo:x:27:ubuntu
audio:x:29:
dip:x:30:ubuntu
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
shadow:x:42:
utmp:x:43:
video:x:44:
sasl:x:45:
plugdev:x:46:
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:999:
systemd-network:x:998:
crontab:x:997:
systemd-timesync:x:996:
input:x:995:
sgx:x:994:
kvm:x:993:
render:x:992:
messagebus:x:101:
syslog:x:102:
systemd-resolve:x:991:
uuidd:x:103:
tss:x:104:
lxd:x:105:ubuntu
_ssh:x:106:
rdma:x:107:
tcpdump:x:108:
landscape:x:109:
fwupd-refresh:x:990:
polkitd:x:989:
admin:x:110:
netdev:x:111:
_chrony:x:112:
ubuntu:x:1000:
docker:x:113:ubuntu
professor:x:1004:
berlin:x:1005:
tokio:x:1006:
devlopers:x:1007:
admins:x:1008:



ubuntu@ip-172-31-19-134:~$ cat /etc/group
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:syslog,ubuntu
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:
fax:x:21:
voice:x:22:
cdrom:x:24:ubuntu
floppy:x:25:
tape:x:26:
sudo:x:27:ubuntu
audio:x:29:
dip:x:30:ubuntu
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
shadow:x:42:
utmp:x:43:
video:x:44:
sasl:x:45:
plugdev:x:46:
staff:x:50:
games:x:60:
users:x:100:
nogroup:x:65534:
systemd-journal:x:999:
systemd-network:x:998:
crontab:x:997:
systemd-timesync:x:996:
input:x:995:
sgx:x:994:
kvm:x:993:
render:x:992:
messagebus:x:101:
syslog:x:102:
systemd-resolve:x:991:
uuidd:x:103:
tss:x:104:
lxd:x:105:ubuntu
_ssh:x:106:
rdma:x:107:
tcpdump:x:108:
landscape:x:109:
fwupd-refresh:x:990:
polkitd:x:989:
admin:x:110:
netdev:x:111:
_chrony:x:112:
ubuntu:x:1000:
docker:x:113:ubuntu
professor:x:1004:
berlin:x:1005:
tokio:x:1006:
devlopers:x:1007:berlin,tokio
admins:x:1008:tokio,professor


ubuntu@ip-172-31-19-134:~$ groups tokio
tokio : tokio devlopers admins
ubuntu@ip-172-31-19-134:~$ groups berlin
berlin : berlin devlopers


ubuntu@ip-172-31-19-134:~$ sudo mkdir /opt/dev-project
ubuntu@ip-172-31-19-134:~$ cd ..
ubuntu@ip-172-31-19-134:/home$ cd /opt/
ubuntu@ip-172-31-19-134:/opt$ ls
containerd  dev-project


ubuntu@ip-172-31-19-134:~$ cd /opt/
ubuntu@ip-172-31-19-134:/opt$ ls -l
total 8
drwx--x--x 4 root root 4096 Jan 31 13:27 containerd
drwxr-xr-x 2 root root 4096 Feb  5 10:36 dev-project

ubuntu@ip-172-31-19-134:/opt$ sudo chgrp devlopers /opt/dev-project/
ubuntu@ip-172-31-19-134:/opt$ ls -l
total 8
drwx--x--x 4 root root      4096 Jan 31 13:27 containerd
drwxr-xr-x 2 root devlopers 4096 Feb  5 10:36 dev-project


ubuntu@ip-172-31-19-134:/$ chmod 775 /opt/dev-project
chmod: changing permissions of '/opt/dev-project': Operation not permitted
ubuntu@ip-172-31-19-134:/$ sudo chmod 775 /opt/dev-project

ubuntu@ip-172-31-19-134:/opt$ ls -l
total 8
drwx--x--x 4 root root      4096 Jan 31 13:27 containerd
drwxrwxr-x 2 root devlopers 4096 Feb  5 10:36 dev-project

ubuntu@ip-172-31-19-134:~$ sudo -u tokio touch /opt/dev-project/tokio.txt
ubuntu@ip-172-31-19-134:~$ ls -l /opt/dev-project/tokio.txt
-rw-rw-r-- 1 tokio tokio 0 Feb  5 11:00 /opt/dev-project/tokio.txt

ubuntu@ip-172-31-19-134:~$ sudo -u berlin touch /opt/dev-project/berlin.txt
ubuntu@ip-172-31-19-134:~$ ls -l /opt/dev-project/berlin.txt
-rw-rw-r-- 1 berlin berlin 0 Feb  5 11:12 /opt/dev-project/berlin.txt

ubuntu@ip-172-31-19-134:~$ sudo mkdir /opt/team-workspace
ubuntu@ip-172-31-19-134:~$ cd /opt/
ubuntu@ip-172-31-19-134:/opt$ ls
containerd  dev-project  team-workspace


ubuntu@ip-172-31-19-134:~$ sudo chmod 775 /opt/team-workspace/
ubuntu@ip-172-31-19-134:~$ ls -ld /opt/team-workspace/
drwxrwxr-x 2 root project-team 4096 Feb  5 11:47 /opt/team-workspace/

ubuntu@ip-172-31-19-134:~$ sudo -u nairobi touch /opt/team-workspace/nairobi.txt
ubuntu@ip-172-31-19-134:~$ sudo /opt/team-workspace/
sudo: /opt/team-workspace/: command not found
ubuntu@ip-172-31-19-134:~$ sudo cd /opt/team-workspace/
sudo: cd: command not found
sudo: "cd" is a shell built-in command, it cannot be run directly.
sudo: the -s option may be used to run a privileged shell.
sudo: the -D option may be used to run a command in a specific directory.
ubuntu@ip-172-31-19-134:~$ cd /opt/
ubuntu@ip-172-31-19-134:/opt$ ls
containerd  dev-project  team-workspace
ubuntu@ip-172-31-19-134:/opt$ cd team-workspace/
ubuntu@ip-172-31-19-134:/opt/team-workspace$ ls
nairobi.txt
ubuntu@ip-172-31-19-134:/opt/team-workspace$ ls -l
total 0
-rw-rw-r-- 1 nairobi nairobi 0 Feb  5 11:54 nairobi.txt


# Day 09 Challenge

## Users & Groups Created
Users: tokyo, berlin, professor, nairobi  
Groups: developers, admins, project-team

## Group Assignments
tokyo → developers, project-team  
berlin → developers, admins  
professor → admins  
nairobi → project-team  

## Directories Created
/opt/dev-project (775, developers)  
/opt/team-workspace (775, project-team)

## Commands Used
useradd, passwd, groupadd, usermod, chmod, chgrp, groups, sudo -u

## What I Learned
1. Linux users and groups control access
2. Shared directories use group permissions
3. DevOps teams rely on group-based access
