What happens when you type google.com in a browser?
When I type google.com, my system asks a DNS server to convert the domain name into an IP address.
The DNS resolver checks cache first, then queries root server - TLD server - authoritative server.
Finally, it returns the IP address of Google’s server.
My browser then connects to that IP address to load the website.

What is IPv4?
IPv4 is a 32-bit address written in dotted decimal format.
Example: 172.31.19.134
It contains 4 octets (8 bits each)
Public IP – Used on internet (Example: 8.8.8.8)
Private IP – Used inside private networks (Example: 172.31.19.134)

What does /24 mean?
/24 means first 24 bits are network bits.
Subnet mask = 255.255.255.0
| CIDR | Subnet Mask     | Total IPs | Usable Hosts |
| ---- | ----------- | --------- | ------------ |
| /24  | 255.255.255.0   | 256       | 254          |
| /16  | 255.255.0.0     | 65,536    | 65,534       |
| /28  | 255.255.255.240 | 16        | 14           |

Why do we subnet?

We subnet to:
Reduce broadcast traffic
Improve security
Organize networks logically
Efficient IP utilization

What is a Port?
A port is a logical communication endpoint.
It allows multiple services to run on one IP address.

Port	Service
22	    SSH
80	     HTTP
443	    HTTPS
53	     DNS
3306	MySQL
6379	Redis
27017	MongoDB

What I Learned (3 Key Points)--

DNS converts domain names into IP addresses.

CIDR defines how many hosts a network can support.

Ports allow multiple services on one IP.



