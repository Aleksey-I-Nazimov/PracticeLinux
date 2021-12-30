iptables -t filter -A INPUT -p tcp --match multiport --dports 1:21 -j REJECT
iptables -t filter -A INPUT -p tcp --match multiport --dports 23:79 -j REJECT
iptables -t filter -A INPUT -p tcp --match multiport --dports 81:65535 -j REJECT
iptables -t filter -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -t filter -A INPUT -p tcp --dport 80 -j ACCEPT

iptables -t filter -A FORWARD -p tcp -s 127.0.0.1 --sport 80 -d 127.0.0.1 --dport 8080 -j ACCEPT

