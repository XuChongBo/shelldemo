#!/bin/bash 

sudo apt-get remove docker docker-engine

sudo apt-get update
sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual


echo 'Acquire::http::proxy "http://172.18.11.163:16808";' >> /etc/apt/apt.conf
echo 'Acquire::https::proxy "http://172.18.11.163:16808";'  >> /etc/apt/apt.conf
