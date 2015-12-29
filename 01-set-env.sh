#!/bin/bash

# Disable SELinux
setenforce 0
sed -i 's/=enforcing/=disabled/g' /etc/selinux/config

# Disable Firewall
systemctl disable firewalld
systemctl stop firewalld

# Create folders
mkdir -p /data/www/steamproxy
mkdir -p /data/www/logs
