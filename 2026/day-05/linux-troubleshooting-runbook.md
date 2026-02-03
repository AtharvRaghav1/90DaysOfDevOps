ubuntu@ip-172-31-19-134:~$ uname -a
Linux ip-172-31-19-134 6.14.0-1018-aws #18~24.04.1-Ubuntu SMP Mon Nov 24 19:46:27 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux

ubuntu@ip-172-31-19-134:~$ cat /etc/os-release 
PRETTY_NAME="Ubuntu 24.04.3 LTS"
NAME="Ubuntu"
VERSION_ID="24.04"
VERSION="24.04.3 LTS (Noble Numbat)"
VERSION_CODENAME=noble
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=noble
LOGO=ubuntu-logo

ubuntu@ip-172-31-19-134:~$ cat /tmp/runbook-demo/
cat: /tmp/runbook-demo/: Is a directory
ubuntu@ip-172-31-19-134:~$ cp /etc/host /tmp/runbook-demo/host-copy
cp: cannot stat '/etc/host': No such file or directory
ubuntu@ip-172-31-19-134:~$ cp /etc/hosts /tmp/runbook-demo/hosts-copy
ubuntu@ip-172-31-19-134:~$ cd tmp/
-bash: cd: tmp/: No such file or directory
ubuntu@ip-172-31-19-134:~$ ls -l
total 8
-rw-rw-r-- 1 tokio  ubuntu    0 Jan 31 14:21 batch.txt
drwxrwxr-x 2 ubuntu ubuntu 4096 Jan 31 12:14 cloud
drwxrwxr-x 2 ubuntu ubuntu 4096 Jan 31 12:10 devops
ubuntu@ip-172-31-19-134:~$ ls -l/tmp/runbook-demo
ls: invalid option -- '/'
Try 'ls --help' for more information.
ubuntu@ip-172-31-19-134:~$ ls -l /tmp/runbook-demo
total 4
-rw-r--r-- 1 ubuntu ubuntu 221 Feb  3 10:18 hosts-copy


ubuntu@ip-172-31-19-134:~$ pgrep sshd
1191
1192
1604

ubuntu@ip-172-31-19-134:~$ ps -o pid
    PID
   1638
   9957
ubuntu@ip-172-31-19-134:~$ ps -o pcpu
%CPU
 0.0
 0.0
ubuntu@ip-172-31-19-134:~$ ps -o pmem
%MEM
 0.5
 0.4


 ubuntu@ip-172-31-19-134:~$ free -h
               total        used        free      shared  buff/cache   available
Mem:           914Mi       376Mi       308Mi       2.7Mi       395Mi       538Mi
Swap:             0B          0B          0B


ubuntu@ip-172-31-19-134:~$ sudo du -sh /var/log
42M     /var/log


ubuntu@ip-172-31-19-134:~$ sudo du -h /var/log
4.0K    /var/log/private
460K    /var/log/sysstat
4.0K    /var/log/chrony
12K     /var/log/amazon/ssm/audits
84K     /var/log/amazon/ssm
88K     /var/log/amazon
4.0K    /var/log/landscape
76K     /var/log/apt
4.0K    /var/log/dist-upgrade
39M     /var/log/journal/ec294abe663964eb6be73a88c3ad1f7a
39M     /var/log/journal
44K     /var/log/unattended-upgrades
8.0K    /var/log/nginx
42M     /var/log


ubuntu@ip-172-31-19-134:~$ free -h
               total        used        free      shared  buff/cache   available
Mem:           914Mi       383Mi       292Mi       2.7Mi       404Mi       530Mi
Swap:             0B          0B          0B


ubuntu@ip-172-31-19-134:~$ sudo ss -tulpn | grep ssh
tcp   LISTEN 0      4096              0.0.0.0:22         0.0.0.0:*    users:(("sshd",pid=4872,fd=3),("systemd",pid=1,fd=93))                         
tcp   LISTEN 0      4096                 [::]:22            [::]:*    users:(("sshd",pid=4872,fd=4),("systemd",pid=1,fd=94)) 



ubuntu@ip-172-31-19-134:~$ ping google.com
PING google.com (142.251.163.102) 56(84) bytes of data.
64 bytes from wv-in-f102.1e100.net (142.251.163.102): icmp_seq=1 ttl=106 time=1.59 ms
64 bytes from wv-in-f102.1e100.net (142.251.163.102): icmp_seq=2 ttl=106 time=1.61 ms
64 bytes from wv-in-f102.1e100.net (142.251.163.102): icmp_seq=3 ttl=106 time=1.63 ms
64 bytes from wv-in-f102.1e100.net (142.251.163.102): icmp_seq=4 ttl=106 time=1.62 ms
64 bytes from wv-in-f102.1e100.net (142.251.163.102): icmp_seq=5 ttl=106 time=1.63 ms
64 bytes from wv-in-f102.1e100.net (142.251.163.102): icmp_seq=6 ttl=106 time=1.63 ms
^C

ubuntu@ip-172-31-19-134:~$ ping -c 3 google.com
PING google.com (142.251.163.138) 56(84) bytes of data.
64 bytes from wv-in-f138.1e100.net (142.251.163.138): icmp_seq=1 ttl=105 time=2.07 ms
64 bytes from wv-in-f138.1e100.net (142.251.163.138): icmp_seq=2 ttl=105 time=1.96 ms
64 bytes from wv-in-f138.1e100.net (142.251.163.138): icmp_seq=3 ttl=105 time=1.95 ms

ubuntu@ip-172-31-19-134:~$ ping -c 5 google.com
PING google.com (142.251.163.113) 56(84) bytes of data.
64 bytes from wv-in-f113.1e100.net (142.251.163.113): icmp_seq=1 ttl=101 time=1.69 ms
64 bytes from wv-in-f113.1e100.net (142.251.163.113): icmp_seq=2 ttl=101 time=1.71 ms
64 bytes from wv-in-f113.1e100.net (142.251.163.113): icmp_seq=3 ttl=101 time=1.69 ms
64 bytes from wv-in-f113.1e100.net (142.251.163.113): icmp_seq=4 ttl=101 time=1.77 ms
64 bytes from wv-in-f113.1e100.net (142.251.163.113): icmp_seq=5 ttl=101 time=1.71 ms



ubuntu@ip-172-31-19-134:~$ journalctl -u ssh -n 50  
Feb 01 00:53:02 ip-172-31-19-134 sshd[5883]: Connection closed by authenticating user root 49.173.65.94 port 53804 [preauth]
Feb 01 00:53:03 ip-172-31-19-134 sshd[5885]: Connection closed by authenticating user root 49.173.65.94 port 53814 [preauth]
Feb 01 00:53:04 ip-172-31-19-134 sshd[5887]: Connection closed by authenticating user root 49.173.65.94 port 53820 [preauth]
Feb 01 00:53:06 ip-172-31-19-134 sshd[5889]: Connection closed by authenticating user root 49.173.65.94 port 53822 [preauth]
Feb 01 01:20:44 ip-172-31-19-134 sshd[5927]: Connection closed by 164.92.214.124 port 58134
Feb 01 01:23:58 ip-172-31-19-134 sshd[5944]: Connection closed by authenticating user root 164.92.214.124 port 33394 [preauth]
Feb 01 01:25:13 ip-172-31-19-134 sshd[5949]: Connection closed by authenticating user root 164.92.214.124 port 56112 [preauth]
Feb 01 01:26:26 ip-172-31-19-134 sshd[5955]: Connection closed by authenticating user root 164.92.214.124 port 56726 [preauth]
Feb 01 01:27:36 ip-172-31-19-134 sshd[5957]: Connection closed by authenticating user root 164.92.214.124 port 36562 [preauth]
Feb 01 01:48:47 ip-172-31-19-134 sshd[5979]: Connection closed by 64.227.110.161 port 38701
Feb 01 01:48:48 ip-172-31-19-134 sshd[5980]: Connection closed by 64.227.110.161 port 46499 [preauth]
Feb 01 03:01:13 ip-172-31-19-134 sshd[6072]: banner exchange: Connection from 3.134.148.59 port 40526: invalid format
Feb 01 03:02:03 ip-172-31-19-134 sshd[6073]: banner exchange: Connection from 3.134.148.59 port 38800: invalid format
Feb 01 03:03:15 ip-172-31-19-134 sshd[6076]: Connection closed by 3.134.148.59 port 56958
Feb 01 03:05:44 ip-172-31-19-134 sshd[6081]: banner exchange: Connection from 3.134.148.59 port 55302: invalid format
Feb 01 03:06:13 ip-172-31-19-134 sshd[6082]: Connection closed by 3.134.148.59 port 40750 [preauth]
Feb 01 03:25:53 ip-172-31-19-134 sshd[6130]: Connection closed by 182.92.56.241 port 37946
Feb 01 04:43:41 ip-172-31-19-134 sshd[6229]: Accepted publickey for ubuntu from 223.189.214.152 port 52935 ssh2: RSA SHA256:Lt0UW0VOSkrCJZKvf4VNl4nWsrOqbr8qJko/kdOSSNM
Feb 01 04:43:41 ip-172-31-19-134 sshd[6229]: pam_unix(sshd:session): session opened for user ubuntu(uid=1000) by ubuntu(uid=0)
Feb 01 04:45:02 ip-172-31-19-134 sshd[846]: Received signal 15; terminating.
Feb 01 04:45:02 ip-172-31-19-134 systemd[1]: Stopping ssh.service - OpenBSD Secure Shell server...
Feb 01 04:45:02 ip-172-31-19-134 systemd[1]: ssh.service: Deactivated successfully.
Feb 01 04:45:02 ip-172-31-19-134 systemd[1]: Stopped ssh.service - OpenBSD Secure Shell server.
Feb 01 04:45:02 ip-172-31-19-134 systemd[1]: ssh.service: Consumed 6.759s CPU time, 16.3M memory peak, 0B memory swap peak.



ubuntu@ip-172-31-19-134:~$ journalctl -u ssh -n 5  
Feb 03 10:45:33 ip-172-31-19-134 sshd[9964]: Connection closed by 71.6.199.65 port 50134 [preauth]
Feb 03 10:46:15 ip-172-31-19-134 sshd[9969]: Invalid user pi from 182.8.161.112 port 23483
Feb 03 10:46:15 ip-172-31-19-134 sshd[9970]: Invalid user pi from 182.8.161.112 port 24545
Feb 03 10:46:15 ip-172-31-19-134 sshd[9969]: Connection closed by invalid user pi 182.8.161.112 port 23483 [preauth]
Feb 03 10:46:15 ip-172-31-19-134 sshd[9970]: Connection closed by invalid user pi 182.8.161.112 port 24545 [preauth]



ubuntu@ip-172-31-19-134:~$ tail -n 50 /var/log/auth.log
2026-02-03T10:25:01.796727+00:00 ip-172-31-19-134 CRON[2413]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-03T10:25:01.810575+00:00 ip-172-31-19-134 CRON[2413]: pam_unix(cron:session): session closed for user root
2026-02-03T10:35:01.818653+00:00 ip-172-31-19-134 CRON[2443]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-03T10:35:01.835883+00:00 ip-172-31-19-134 CRON[2443]: pam_unix(cron:session): session closed for user root
2026-02-03T10:39:43.261530+00:00 ip-172-31-19-134 polkitd[2925]: Loading rules from directory /etc/polkit-1/rules.d
2026-02-03T10:39:43.262729+00:00 ip-172-31-19-134 polkitd[2925]: Loading rules from directory /usr/share/polkit-1/rules.d
2026-02-03T10:39:43.267789+00:00 ip-172-31-19-134 polkitd[2925]: Finished loading, compiling and executing 6 rules
2026-02-03T10:39:43.269529+00:00 ip-172-31-19-134 polkitd[2925]: Acquired the name org.freedesktop.PolicyKit1 on the system bus
2026-02-03T10:39:49.475294+00:00 ip-172-31-19-134 sshd[1191]: Received signal 15; terminating.
2026-02-03T10:39:49.651362+00:00 ip-172-31-19-134 sshd[3173]: Server listening on 0.0.0.0 port 22.
2026-02-03T10:39:49.651694+00:00 ip-172-31-19-134 sshd[3173]: Server listening on :: port 22.
2026-02-03T10:40:16.748186+00:00 ip-172-31-19-134 sshd[3173]: Received signal 15; terminating.
2026-02-03T10:40:17.025204+00:00 ip-172-31-19-134 sshd[4872]: Server listening on 0.0.0.0 port 22.
2026-02-03T10:40:17.025422+00:00 ip-172-31-19-134 sshd[4872]: Server listening on :: port 22.
2026-02-03T10:40:17.154170+00:00 ip-172-31-19-134 polkitd[4837]: Loading rules from directory /etc/polkit-1/rules.d
2026-02-03T10:40:17.158776+00:00 ip-172-31-19-134 polkitd[4837]: Loading rules from directory /usr/share/polkit-1/rules.d
2026-02-03T10:40:17.181484+00:00 ip-172-31-19-134 polkitd[4837]: Finished loading, compiling and executing 6 rules
2026-02-03T10:40:17.187900+00:00 ip-172-31-19-134 polkitd[4837]: Acquired the name org.freedesktop.PolicyKit1 on the system bus
2026-02-03T10:45:01.637680+00:00 ip-172-31-19-134 CRON[9959]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-03T10:45:01.644927+00:00 ip-172-31-19-134 CRON[9959]: pam_unix(cron:session): session closed for user root
2026-02-03T10:45:33.117192+00:00 ip-172-31-19-134 sshd[9964]: Connection closed by 71.6.199.65 port 50134 [preauth]
2026-02-03T10:46:15.522701+00:00 ip-172-31-19-134 sshd[9969]: Invalid user pi from 182.8.161.112 port 23483
2026-02-03T10:46:15.652956+00:00 ip-172-31-19-134 sshd[9970]: Invalid user pi from 182.8.161.112 port 24545
2026-02-03T10:46:15.799559+00:00 ip-172-31-19-134 sshd[9969]: Connection closed by invalid user pi 182.8.161.112 port 23483 [preauth]
2026-02-03T10:46:15.925975+00:00 ip-172-31-19-134 sshd[9970]: Connection closed by invalid user pi 182.8.161.112 port 24545 [preauth]
2026-02-03T10:53:15.842587+00:00 ip-172-31-19-134 sudo:   ubuntu : TTY=pts/0 ; PWD=/home/ubuntu ; USER=root ; COMMAND=/usr/bin/du -sh /var/log
2026-02-03T10:53:15.870152+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session opened for user root(uid=0) by ubuntu(uid=1000)
2026-02-03T10:53:15.870215+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session closed for user root
2026-02-03T10:55:01.653408+00:00 ip-172-31-19-134 CRON[10004]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-03T10:55:01.657253+00:00 ip-172-31-19-134 CRON[10004]: pam_unix(cron:session): session closed for user root
2026-02-03T11:00:46.096149+00:00 ip-172-31-19-134 sudo:   ubuntu : TTY=pts/0 ; PWD=/home/ubuntu ; USER=root ; COMMAND=/usr/bin/df -h /var/log
2026-02-03T11:00:46.100744+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session opened for user root(uid=0) by ubuntu(uid=1000)
2026-02-03T11:00:46.100892+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session closed for user root
2026-02-03T11:01:00.147122+00:00 ip-172-31-19-134 sudo:   ubuntu : TTY=pts/0 ; PWD=/home/ubuntu ; USER=root ; COMMAND=/usr/bin/du -h /var/log
2026-02-03T11:01:00.148055+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session opened for user root(uid=0) by ubuntu(uid=1000)
2026-02-03T11:01:00.152183+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session closed for user root
2026-02-03T11:05:01.668867+00:00 ip-172-31-19-134 CRON[10031]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-03T11:05:01.690026+00:00 ip-172-31-19-134 CRON[10031]: pam_unix(cron:session): session closed for user root
2026-02-03T11:06:48.629708+00:00 ip-172-31-19-134 sudo:   ubuntu : TTY=pts/0 ; PWD=/home/ubuntu ; USER=root ; COMMAND=/usr/bin/ss -tulpn
2026-02-03T11:06:48.632993+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session opened for user root(uid=0) by ubuntu(uid=1000)
2026-02-03T11:06:48.639769+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session closed for user root
2026-02-03T11:15:01.704572+00:00 ip-172-31-19-134 CRON[10076]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-03T11:15:01.721046+00:00 ip-172-31-19-134 CRON[10076]: pam_unix(cron:session): session closed for user root
2026-02-03T11:17:01.725901+00:00 ip-172-31-19-134 CRON[10082]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-02-03T11:17:01.739041+00:00 ip-172-31-19-134 CRON[10082]: pam_unix(cron:session): session closed for user root
2026-02-03T11:18:13.101114+00:00 ip-172-31-19-134 sshd[10086]: Invalid user admin from 23.95.62.123 port 36030
2026-02-03T11:18:13.205994+00:00 ip-172-31-19-134 sshd[10086]: Connection closed by invalid user admin 23.95.62.123 port 36030 [preauth]
2026-02-03T11:18:43.965150+00:00 ip-172-31-19-134 sshd[10088]: Invalid user orangepi from 23.95.62.123 port 36390
2026-02-03T11:18:44.161708+00:00 ip-172-31-19-134 sshd[10088]: Connection closed by invalid user orangepi 23.95.62.123 port 36390 [preauth]
2026-02-03T11:19:16.062413+00:00 ip-172-31-19-134 sshd[10090]: Connection closed by authenticating user root 23.95.62.123 port 49772 [preauth]


ubuntu@ip-172-31-19-134:~$ head -n 50 /var/log/auth.log
2026-01-31T12:07:54.073653+00:00 ip-172-31-19-134 useradd[623]: new group: name=ubuntu, GID=1000
2026-01-31T12:07:54.073660+00:00 ip-172-31-19-134 useradd[623]: new user: name=ubuntu, UID=1000, GID=1000, home=/home/ubuntu, shell=/bin/bash, from=none
2026-01-31T12:07:54.073663+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to group 'adm'
2026-01-31T12:07:54.073666+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to group 'cdrom'
2026-01-31T12:07:54.073669+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to group 'sudo'
2026-01-31T12:07:54.073672+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to group 'dip'
2026-01-31T12:07:54.073675+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to group 'lxd'
2026-01-31T12:07:54.073678+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to shadow group 'adm'
2026-01-31T12:07:54.073685+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to shadow group 'cdrom'
2026-01-31T12:07:54.073688+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to shadow group 'sudo'
2026-01-31T12:07:54.073691+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to shadow group 'dip'
2026-01-31T12:07:54.073695+00:00 ip-172-31-19-134 useradd[623]: add 'ubuntu' to shadow group 'lxd'
2026-01-31T12:07:54.073699+00:00 ip-172-31-19-134 passwd[631]: password for 'ubuntu' changed by 'root'
2026-01-31T12:07:54.078980+00:00 ip-172-31-19-134 systemd-logind[668]: New seat seat0.
2026-01-31T12:07:54.078983+00:00 ip-172-31-19-134 systemd-logind[668]: Watching system buttons on /dev/input/event0 (Power Button)
2026-01-31T12:07:54.078987+00:00 ip-172-31-19-134 systemd-logind[668]: Watching system buttons on /dev/input/event1 (Sleep Button)
2026-01-31T12:07:54.078990+00:00 ip-172-31-19-134 systemd-logind[668]: Watching system buttons on /dev/input/event2 (AT Translated Set 2 keyboard)
2026-01-31T12:07:54.079069+00:00 ip-172-31-19-134 polkitd[659]: Loading rules from directory /etc/polkit-1/rules.d
2026-01-31T12:07:54.079076+00:00 ip-172-31-19-134 polkitd[659]: Loading rules from directory /usr/share/polkit-1/rules.d
2026-01-31T12:07:54.079082+00:00 ip-172-31-19-134 polkitd[659]: Finished loading, compiling and executing 6 rules
2026-01-31T12:07:54.079085+00:00 ip-172-31-19-134 polkitd[659]: Acquired the name org.freedesktop.PolicyKit1 on the system bus
2026-01-31T12:08:50.239527+00:00 ip-172-31-19-134 sshd[1089]: Server listening on 0.0.0.0 port 22.
2026-01-31T12:08:50.239648+00:00 ip-172-31-19-134 sshd[1089]: Server listening on :: port 22.
2026-01-31T12:08:56.728443+00:00 ip-172-31-19-134 sshd[1090]: Accepted publickey for ubuntu from 106.221.54.141 port 37185 ssh2: RSA SHA256:Lt0UW0VOSkrCJZKvf4VNl4nWsrOqbr8qJko/kdOSSNM
2026-01-31T12:08:56.731058+00:00 ip-172-31-19-134 sshd[1090]: pam_unix(sshd:session): session opened for user ubuntu(uid=1000) by ubuntu(uid=0)
2026-01-31T12:08:56.753168+00:00 ip-172-31-19-134 systemd-logind[668]: New session 1 of user ubuntu.
2026-01-31T12:08:56.768963+00:00 ip-172-31-19-134 (systemd): pam_unix(systemd-user:session): session opened for user ubuntu(uid=1000) by ubuntu(uid=0)
2026-01-31T12:15:01.213859+00:00 ip-172-31-19-134 CRON[1268]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-31T12:15:01.214601+00:00 ip-172-31-19-134 CRON[1268]: pam_unix(cron:session): session closed for user root
2026-01-31T12:17:01.220689+00:00 ip-172-31-19-134 CRON[1271]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-31T12:17:01.223844+00:00 ip-172-31-19-134 CRON[1271]: pam_unix(cron:session): session closed for user root
2026-01-31T12:21:03.571519+00:00 ip-172-31-19-134 sshd[1281]: Accepted publickey for ubuntu from 106.221.54.141 port 39490 ssh2: RSA SHA256:Lt0UW0VOSkrCJZKvf4VNl4nWsrOqbr8qJko/kdOSSNM
2026-01-31T12:21:03.573319+00:00 ip-172-31-19-134 sshd[1281]: pam_unix(sshd:session): session opened for user ubuntu(uid=1000) by ubuntu(uid=0)
2026-01-31T12:21:03.576569+00:00 ip-172-31-19-134 systemd-logind[668]: New session 5 of user ubuntu.
2026-01-31T12:25:01.228915+00:00 ip-172-31-19-134 CRON[1382]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-31T12:25:01.232460+00:00 ip-172-31-19-134 CRON[1382]: pam_unix(cron:session): session closed for user root
2026-01-31T12:26:21.673251+00:00 ip-172-31-19-134 sshd[1387]: Connection closed by 172.202.118.69 port 36266
2026-01-31T12:26:21.723953+00:00 ip-172-31-19-134 sshd[1390]: banner exchange: Connection from 172.202.118.69 port 58088: invalid format
2026-01-31T12:33:36.796378+00:00 ip-172-31-19-134 sshd[1409]: Connection closed by 51.75.141.245 port 55282
2026-01-31T12:35:01.237547+00:00 ip-172-31-19-134 CRON[1410]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-31T12:35:01.240271+00:00 ip-172-31-19-134 CRON[1410]: pam_unix(cron:session): session closed for user root
2026-01-31T12:38:11.351444+00:00 ip-172-31-19-134 sshd[1414]: Accepted publickey for ubuntu from 106.221.54.141 port 41812 ssh2: RSA SHA256:Lt0UW0VOSkrCJZKvf4VNl4nWsrOqbr8qJko/kdOSSNM
2026-01-31T12:38:11.353228+00:00 ip-172-31-19-134 sshd[1414]: pam_unix(sshd:session): session opened for user ubuntu(uid=1000) by ubuntu(uid=0)
2026-01-31T12:38:11.356658+00:00 ip-172-31-19-134 systemd-logind[668]: New session 8 of user ubuntu.
2026-01-31T12:43:07.045998+00:00 ip-172-31-19-134 sudo:   ubuntu : TTY=pts/2 ; PWD=/home/ubuntu ; USER=root ; COMMAND=/usr/bin/nano /etc/ssh/sshd_config
2026-01-31T12:43:07.049529+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session opened for user root(uid=0) by ubuntu(uid=1000)
2026-01-31T12:45:01.245552+00:00 ip-172-31-19-134 CRON[1500]: pam_unix(cron:session): session opened for user root(uid=0) by root(uid=0)
2026-01-31T12:45:01.248900+00:00 ip-172-31-19-134 CRON[1500]: pam_unix(cron:session): session closed for user root
2026-01-31T12:46:17.079981+00:00 ip-172-31-19-134 sudo: pam_unix(sudo:session): session closed for user root
2026-01-31T12:46:28.898861+00:00 ip-172-31-19-134 sshd[1472]: Received disconnect from 106.221.54.141 port 41812:11: disconnected by user


















