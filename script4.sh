#!/bin/bash
echo "configurando el resolv.conf con cat"
cat <<TEST> /etc/resolv.conf
nameserver 8.8.8.8
TEST
echo "haproxy"

sudo apt install haproxy -y
systemctl enable haproxy