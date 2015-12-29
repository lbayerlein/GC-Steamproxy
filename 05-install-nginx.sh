#!/bin/bash

# NGINX Repository
echo '[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/OS/OSRELEASE/$basearch/
gpgcheck=0
enabled=1' > /etc/yum.repos.d/nginx.repo

# Install NGINX
yum -y install nginx
