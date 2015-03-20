#!/bin/bash
brctl addbr br1
ifconfig eth0 up
ifconfig br1 up
ifconfig eth0 0.0.0.0
ip addr add 10.166.224.17/22 dev br1
#ifconfig br1 10.10.166.224.17/22
brctl addif br1 eth0
ip route add default via 10.166.224.1 dev br1 
ip route add 10.166.12.0/22 via 10.166.224.1 dev br1 
ip route add 10.166.224.0/22 dev br1  proto kernel  scope link  src 10.166.224.17 
ip route add 10.166.228.0/22 via 10.166.224.1 dev br1 
ip route add 169.254.169.254 via 10.166.224.1 dev br1 


