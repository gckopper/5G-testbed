sudo sysctl -w net.ipv4.ip_forward=1

sudo iptables -R POSTROUTING 1 -t nat -j MASQUERADE -o enp4s0 -s 10.45.0.0/16
