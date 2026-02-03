Output of Commands

ubuntu@ip-172-31-19-134:~$ ps
    PID TTY          TIME CMD
   1638 pts/0    00:00:00 bash
   1657 pts/0    00:00:00 ps

top
PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                         
      1 root      20   0   22232  13628   9648 S   0.0   1.5   0:01.26 systemd                                                                                         
      2 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kthreadd                                                                                        
      3 root      20   0       0      0      0 S   0.0   0.0   0:00.00 pool_workqueue_release                                                                          
      4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-rcu_gp                                                                                
      5 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-sync_wq                                                                               
      6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-kvfree_rcu_reclaim                                                                    
      7 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-slub_flushwq                                                                          
      8 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-netns                                                                                 
      9 root      20   0       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0-cgroup_destroy                                                                      
     10 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0H-events_highpri                                                                     
     11 root      20   0       0      0      0 I   0.0   0.0   0:00.04 kworker/0:1-events                                                                              
     12 root      20   0       0      0      0 I   0.0   0.0   0:00.06 kworker/u8:0-loop5                                                                              
     13 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/R-mm_percpu_wq                                                                          
     14 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_rude_kthread                                                                          
     15 root      20   0       0      0      0 I   0.0   0.0   0:00.00 rcu_tasks_trace_kthread                                                                         
     16 root      20   0       0      0      0 S   0.0   0.0   0:00.05 ksoftirqd/0                                                                                     
     17 root      20   0       0      0      0 I   0.0   0.0   0:00.10 rcu_sched                                                                                       
     18 root      20   0       0      0      0 S   0.0   0.0   0:00.00 rcu_exp_par_gp_kthread_worker/0                                                                 
     19 root      20   0       0      0      0 S   0.0   0.0   0:00.00 rcu_exp_gp_kthread_worker                                                                       
     20 root      rt   0       0      0      0 S   0.0   0.0   0:00.00 migration/0    


 sudo apt install docker.io
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
docker.io is already the newest version (28.2.2-0ubuntu1~24.04.1).
0 upgraded, 0 newly installed, 0 to remove and 69 not upgraded.
ubuntu@ip-172-31-19-134:~$ systemctl status docker
● docker.service - Docker Application Container Engine
     Loaded: loaded (/usr/lib/systemd/system/docker.service; enabled; preset: enabled)
     Active: active (running) since Tue 2026-02-03 09:50:01 UTC; 3min 19s ago
TriggeredBy: ● docker.socket
       Docs: https://docs.docker.com
   Main PID: 765 (dockerd)
      Tasks: 9
     Memory: 94.3M (peak: 95.6M)
        CPU: 807ms
     CGroup: /system.slice/docker.service
             └─765 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock


              sudo apt install docker.io
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
docker.io is already the newest version (28.2.2-0ubuntu1~24.04.1).
0 upgraded, 0 newly installed, 0 to remove and 69 not upgraded.
ubuntu@ip-172-31-19-134:~$ systemctl status docker
● docker.service - Docker Application Container Engine
     Loaded: loaded (/usr/lib/systemd/system/docker.service; enabled; preset: enabled)
     Active: active (running) since Tue 2026-02-03 09:50:01 UTC; 3min 19s ago
TriggeredBy: ● docker.socket
       Docs: https://docs.docker.com
   Main PID: 765 (dockerd)
      Tasks: 9
     Memory: 94.3M (peak: 95.6M)
        CPU: 807ms
     CGroup: /system.slice/docker.service
             └─765 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock



             ubuntu@ip-172-31-19-134:~$ systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Tue 2026-02-03 09:49:57 UTC; 7min ago
       Docs: man:nginx(8)
    Process: 549 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
    Process: 569 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
   Main PID: 612 (nginx)


   ubuntu@ip-172-31-19-134:~$ systemctl status nginx
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; preset: enabled)
     Active: active (running) since Tue 2026-02-03 09:49:57 UTC; 7min ago
       Docs: man:nginx(8)
    Process: 549 ExecStartPre=/usr/sbin/nginx -t -q -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
    Process: 569 ExecStart=/usr/sbin/nginx -g daemon on; master_process on; (code=exited, status=0/SUCCESS)
   Main PID: 612 (nginx)



   