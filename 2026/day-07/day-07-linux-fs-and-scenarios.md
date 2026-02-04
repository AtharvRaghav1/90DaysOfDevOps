
/ -  Root directory, starting point of Linux file system
 Example: bin, etc, home

 /home - Contains user home directories
 Example: /home/user
 I would use this to store user files and scripts

/root- Home directory of root user
 Example: .bashrc
 I would use this when logged in as root

 /etc- Contains configuration files
 Example: hostname, ssh
 I would use this when modifying service or system config

  /var/log -Stores system and application logs
 Example: syslog, auth.log
 I would use this during troubleshooting

 /tmp -Temporary files
Example: temp install files
I would use this for short-lived files

/bin -Essential system binaries
 Example: ls, cp
 I would use this to run basic commands

 /usr/bin- User-level binaries
 Example: python, git
 I would use this for installed applications

 /opt
 Optional third-party applications
 Example: custom software
 I would use this for manual installations

Step 1: systemctl status myapp  
Why: Check service of nginx 
 ubuntu@ip-172-31-19-134:~$ systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Tue 2026-02-03 10:40:16 UTC; 5h 27min ago
       Docs: man:nginx(8)
   Main PID: 4862 (nginx)
      Tasks: 3 (limit: 1017)
     Memory: 2.5M (peak: 2.7M)
        CPU: 28ms
     CGroup: /system.slice/nginx.service
             ├─4862 "nginx: master process /usr/sbin/nginx -g daemon on; master_process on;"
             ├─4863 "nginx: worker process"
             └─4864 "nginx: worker process"

 journalctl -u nginx -n 50  
Why: View recent logs 50 means it will show 50 logs
ubuntu@ip-172-31-19-134:~$ journalctl -u nginx -n 50
Jan 31 12:55:13 ip-172-31-19-134 systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
Jan 31 12:55:13 ip-172-31-19-134 systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.
Jan 31 13:49:09 ip-172-31-19-134 systemd[1]: Stopping nginx.service - A high performance web server and a reverse proxy server...
Jan 31 13:49:09 ip-172-31-19-134 systemd[1]: nginx.service: Deactivated successfully.
Jan 31 13:49:09 ip-172-31-19-134 systemd[1]: Stopped nginx.service - A high performance web server and a reverse proxy server.
-- Boot 12c528febe534d9c9ff72453d57d74e2 --
Feb 03 09:49:57 ip-172-31-19-134 systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...
Feb 03 09:49:57 ip-172-31-19-134 systemd[1]: Started nginx.service - A high performance web server and a reverse proxy server.
Feb 03 10:39:49 ip-172-31-19-134 systemd[1]: Stopping nginx.service - A high performance web server and a reverse proxy server...
Feb 03 10:40:16 ip-172-31-19-134 systemd[1]: Stopping nginx.service - A high performance web server and a reverse proxy server...
Feb 03 10:40:16 ip-172-31-19-134 systemd[1]: nginx.service: Deactivated successfully.
Feb 03 10:40:16 ip-172-31-19-134 systemd[1]: Stopped nginx.service - A high performance web server and a reverse proxy server.
Feb 03 10:40:16 ip-172-31-19-134 systemd[1]: Starting nginx.service - A high performance web server and a reverse proxy server...

systemctl is-enabled nginx 
Why: Check if service starts on boot  
ubuntu@ip-172-31-19-134:~$ systemctl is-enabled nginx
enabled

systemctl list-units --type=service(nginx) 
Why: Verify service existence 
ubuntu@ip-172-31-19-134:~$ systemctl list-units --type=service
  UNIT                                           LOAD   ACTIVE SUB     DESCRIPTION                                                                  
  acpid.service                                  loaded active running ACPI event daemon
  apparmor.service                               loaded active exited  Load AppArmor profiles
  apport.service                                 loaded active exited  automatic crash report generation
  blk-availability.service                       loaded active exited  Availability of block devices
  chrony.service                                 loaded active running chrony, an NTP client/server
  cloud-config.service                           loaded active exited  Cloud-init: Config Stage
  cloud-final.service                            loaded active exited  Cloud-init: Final Stage
  cloud-init-local.service                       loaded active exited  Cloud-init: Local Stage (pre-network)
  cloud-init.service                             loaded active exited  Cloud-init: Network Stage
  console-setup.service                          loaded active exited  Set console font and keymap
  containerd.service                             loaded active running containerd container runtime
  cron.service                                   loaded active running Regular background program processing daemon
  dbus.service                                   loaded active running D-Bus System Message Bus
  docker.service                                 loaded active running Docker Application Container Engine
  finalrd.service                                loaded active exited  Create final runtime dir for shutdown pivot root
  getty@tty1.service                             loaded active running Getty on tty1
  irqbalance.service                             loaded active running irqbalance daemon
  keyboard-setup.service                         loaded active exited  Set the console keyboard layout
  kmod-static-nodes.service                      loaded active exited  Create List of Static Device Nodes
  lvm2-monitor.service                           loaded active exited  Monitoring of LVM2 mirrors, snapshots etc. using dmeventd or progress polling
  ModemManager.service                           loaded active running Modem Manager
  multipathd.service                             loaded active running Device-Mapper Multipath Device Controller
  networkd-dispatcher.service                    loaded active running Dispatcher daemon for systemd-networkd
  nginx.service                                  loaded active running A high performance web server and a reverse proxy server
  plymouth-quit-wait.service                     loaded active exited  Hold until boot process finishes up



  ubuntu@ip-172-31-19-134:~$ ps aux --sort=-%cpu | head -10
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         580  0.0  5.2 1802028 48900 ?       Ssl  Feb03   0:39 /usr/bin/containerd
ubuntu      4241  0.0  1.2  20292 11540 ?        Ss   09:36   0:00 /usr/lib/systemd/systemd --user
root        3704  0.0  0.0      0     0 ?        I    07:20   0:00 [kworker/0:1-events]
root         743  0.0  7.5 1898340 70868 ?       Ssl  Feb03   0:06 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock
root        4243  0.0  0.0      0     0 ?        I    09:36   0:00 [kworker/1:2-events]
root         189  0.0  2.9 288952 27292 ?        SLsl Feb03   0:05 /sbin/multipathd -d -s
root        3916  0.0  0.0      0     0 ?        I    09:24   0:00 [kworker/u8:0-events_power_efficient]
root        3891  0.0  0.0      0     0 ?        I    09:16   0:00 [kworker/u8:2-events_unbound]
root        3885  0.0  0.0      0     0 ?        I    09:10   0:00 [kworker/u8:1-events_power_efficient]


ubuntu@ip-172-31-19-134:~$ systemctl status docker
● docker.service - Docker Application Container Engine
     Loaded: loaded (/usr/lib/systemd/system/docker.service; enabled; preset: enabled)
     Active: active (running) since Tue 2026-02-03 17:22:12 UTC; 16h ago
TriggeredBy: ● docker.socket
       Docs: https://docs.docker.com
   Main PID: 743 (dockerd)
      Tasks: 9
     Memory: 92.1M (peak: 92.9M)
        CPU: 6.692s
     CGroup: /system.slice/docker.service
             └─743 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock

Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.750672586Z" level=warning msg="Error (Unable to complete atomic operation, key modified) dele>
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.824036360Z" level=info msg="Loading containers: done."
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.884619485Z" level=info msg="Docker daemon" commit="28.2.2-0ubuntu1~24.04.1" containerd-snapsh>
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.885385183Z" level=info msg="Initializing buildkit"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.891591625Z" level=warning msg="CDI setup error /etc/cdi: failed to monitor for changes: no su>
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.891623887Z" level=warning msg="CDI setup error /var/run/cdi: failed to monitor for changes: n>
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.925363170Z" level=info msg="Completed buildkit initialization"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.941182929Z" level=info msg="Daemon has completed initialization"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.941413250Z" level=info msg="API listen on /run/docker.sock"
Feb 03 17:22:12 ip-172-31-19-134 systemd[1]: Started docker.service - Docker Application Container Engine.




ubuntu@ip-172-31-19-134:~$ systemctl status docker
● docker.service - Docker Application Container Engine
     Loaded: loaded (/usr/lib/systemd/system/docker.service; enabled; preset: enabled)
     Active: active (running) since Tue 2026-02-03 17:22:12 UTC; 16h ago
TriggeredBy: ● docker.socket
       Docs: https://docs.docker.com
   Main PID: 743 (dockerd)
      Tasks: 9
     Memory: 92.1M (peak: 92.9M)
        CPU: 6.692s
     CGroup: /system.slice/docker.service
             └─743 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock

Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.750672586Z" level=warning msg="Error (Unable to complete atomic operation, key modified) dele>
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.824036360Z" level=info msg="Loading containers: done."
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.884619485Z" level=info msg="Docker daemon" commit="28.2.2-0ubuntu1~24.04.1" containerd-snapsh>
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.885385183Z" level=info msg="Initializing buildkit"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.891591625Z" level=warning msg="CDI setup error /etc/cdi: failed to monitor for changes: no su>
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.891623887Z" level=warning msg="CDI setup error /var/run/cdi: failed to monitor for changes: n>
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.925363170Z" level=info msg="Completed buildkit initialization"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.941182929Z" level=info msg="Daemon has completed initialization"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.941413250Z" level=info msg="API listen on /run/docker.sock"
Feb 03 17:22:12 ip-172-31-19-134 systemd[1]: Started docker.service - Docker Application Container Engine.



ubuntu@ip-172-31-19-134:~$ journalctl -u docker -f  (for live logs)
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.750672586Z" level=warning msg="Error (Unable to complete atomic operation, key modified) deleting object [endpoint_count ea19a55b430ac4752b2d40f5d44df83ea84f4cbac8d9d2d676da7e305f76db77], retrying...."
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.824036360Z" level=info msg="Loading containers: done."
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.884619485Z" level=info msg="Docker daemon" commit="28.2.2-0ubuntu1~24.04.1" containerd-snapshotter=false storage-driver=overlay2 version=28.2.2
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.885385183Z" level=info msg="Initializing buildkit"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.891591625Z" level=warning msg="CDI setup error /etc/cdi: failed to monitor for changes: no such file or directory"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.891623887Z" level=warning msg="CDI setup error /var/run/cdi: failed to monitor for changes: no such file or directory"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.925363170Z" level=info msg="Completed buildkit initialization"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.941182929Z" level=info msg="Daemon has completed initialization"
Feb 03 17:22:12 ip-172-31-19-134 dockerd[743]: time="2026-02-03T17:22:12.941413250Z" level=info msg="API listen on /run/docker.sock"
Feb 03 17:22:12 ip-172-31-19-134 systemd[1]: Started docker.service - Docker Application Container Engine.















