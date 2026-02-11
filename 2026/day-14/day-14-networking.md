# Day 14 – Networking Fundamentals

## OSI vs TCP/IP

OSI:
L1 Physical
L2 Data Link
L3 Network (IP)
L4 Transport (TCP/UDP)
L5 Session
L6 Presentation
L7 Application (HTTP, DNS)

TCP/IP:
Network
Internet
Transport
Application


# Where Protocols Sit

IP → Network Layer  
TCP/UDP → Transport Layer  
HTTP/HTTPS → Application Layer  
DNS → Application Layer  

Identity test-
ubuntu@ip-172-31-19-134:~$ hostname -I
172.31.19.134 172.17.0.1

Reachability Test-
ubuntu@ip-172-31-19-134:~$ ping google.com
PING google.com (172.253.62.102) 56(84) bytes of data.
64 bytes from bc-in-f102.1e100.net (172.253.62.102): icmp_seq=1 ttl=106 time=1.81 ms
64 bytes from bc-in-f102.1e100.net (172.253.62.102): icmp_seq=2 ttl=106 time=1.82 ms
64 bytes from bc-in-f102.1e100.net (172.253.62.102): icmp_seq=3 ttl=106 time=1.81 ms
64 bytes from bc-in-f102.1e100.net (172.253.62.102): icmp_seq=4 ttl=106 time=1.81 ms
64 bytes from bc-in-f102.1e100.net (172.253.62.102): icmp_seq=5 ttl=106 time=1.81 ms
^C
--- google.com ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4008ms
rtt min/avg/max/mdev = 1.807/1.812/1.823/0.006 ms
ubuntu@ip-172-31-19-134:~$


ubuntu@ip-172-31-19-134:~$ traceroute google.com
traceroute to google.com (172.253.62.100), 30 hops max, 60 byte packets
 1  100.100.8.90 (100.100.8.90)  4.308 ms 100.100.6.20 (100.100.6.20)  1.072 ms 100.100.32.2 (100.100.32.2)  0.506 ms
 2  240.0.184.35 (240.0.184.35)  1.027 ms 240.0.184.33 (240.0.184.33)  1.025 ms  1.515 ms
 3  100.100.2.112 (100.100.2.112)  1.046 ms * 100.100.2.118 (100.100.2.118)  1.000 ms
 4  99.82.181.25 (99.82.181.25)  0.607 ms *  0.647 ms
 5  * * *
 6  142.251.77.64 (142.251.77.64)  0.990 ms  0.978 ms 142.251.64.100 (142.251.64.100)  1.633 ms
 7  192.178.248.38 (192.178.248.38)  1.190 ms  1.023 ms 192.178.110.210 (192.178.110.210)  1.080 ms
 8  216.239.42.137 (216.239.42.137)  1.750 ms 72.14.236.229 (72.14.236.229)  1.291 ms 216.239.50.97 (216.239.50.97)  2.064 ms
 9  142.251.244.215 (142.251.244.215)  1.819 ms 142.251.226.103 (142.251.226.103)  2.341 ms 142.250.215.189 (142.250.215.189)  2.187 ms
10  209.85.252.200 (209.85.252.200)  1.580 ms 142.251.244.134 (142.251.244.134)  2.267 ms 142.251.244.139 (142.251.244.139)  3.960 ms
11  209.85.249.39 (209.85.249.39)  2.160 ms 74.125.37.153 (74.125.37.153)  1.383 ms 209.85.244.151 (209.85.244.151)  2.204 ms
12  * * *
13  * * *
14  * * *
15  * * *
16  * * *
17  * * *
18  * * *
19  * * *
20  * * *
21  bc-in-f100.1e100.net (172.253.62.100)  1.859 ms  1.656 ms  1.817 ms



ubuntu@ip-172-31-19-134:~$ ss -tulpn
Netid        State         Recv-Q        Send-Q                      Local Address:Port                  Peer Address:Port        Process
udp          UNCONN        0             0                              127.0.0.54:53                         0.0.0.0:*
udp          UNCONN        0             0                           127.0.0.53%lo:53                         0.0.0.0:*
udp          UNCONN        0             0                      172.31.19.134%ens5:68                         0.0.0.0:*
udp          UNCONN        0             0                               127.0.0.1:323                        0.0.0.0:*
udp          UNCONN        0             0                                   [::1]:323                           [::]:*
tcp          LISTEN        0             4096                              0.0.0.0:22                         0.0.0.0:*
tcp          LISTEN        0             511                               0.0.0.0:80                         0.0.0.0:*
tcp          LISTEN        0             4096                           127.0.0.54:53                         0.0.0.0:*
tcp          LISTEN        0             4096                        127.0.0.53%lo:53                         0.0.0.0:*
tcp          LISTEN        0             4096                            127.0.0.1:46179                      0.0.0.0:*
tcp          LISTEN        0             4096                                 [::]:22                            [::]:*
tcp          LISTEN        0             511                                  [::]:80                            [::]:*
ubuntu@ip-172-31-19-134:~$



ubuntu@ip-172-31-19-134:~$ nslookup google.com
Server:         127.0.0.53
Address:        127.0.0.53#53

Non-authoritative answer:
Name:   google.com
Address: 172.253.62.101
Name:   google.com
Address: 172.253.62.113
Name:   google.com
Address: 172.253.62.102
Name:   google.com
Address: 172.253.62.138
Name:   google.com
Address: 172.253.62.100
Name:   google.com
Address: 172.253.62.139
Name:   google.com
Address: 2607:f8b0:4004:c23::8b
Name:   google.com
Address: 2607:f8b0:4004:c23::64
Name:   google.com
Address: 2607:f8b0:4004:c23::65
Name:   google.com
Address: 2607:f8b0:4004:c23::71


ubuntu@ip-172-31-19-134:~$ curl -I https://google.com
HTTP/2 301
location: https://www.google.com/
content-type: text/html; charset=UTF-8


ubuntu@ip-172-31-19-134:~$ netstat -an | head
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN
tcp        0      0 127.0.0.54:53           0.0.0.0:*               LISTEN
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN
tcp        0      0 127.0.0.1:46179         0.0.0.0:*               LISTEN
tcp        0    412 172.31.19.134:22        61.95.199.42:55305      ESTABLISHED
tcp        0      0 172.31.19.134:49824     52.207.133.243:80       TIME_WAIT
tcp        0      0 172.31.19.134:35318     98.87.174.39:443        ESTABLISHED


ubuntu@ip-172-31-19-134:~$ nc -zv localhost 22
Connection to localhost (127.0.0.1) 22 port [tcp/ssh] succeeded!


## Reflection

Fastest troubleshooting command:
ping (quick network check)
curl -I (quick app check)

If DNS fails:
Check Application layer and /etc/resolv.conf

If HTTP 500:
Check application logs and backend service.



