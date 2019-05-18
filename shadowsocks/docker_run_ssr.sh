#!/bin/bash
docker stop ssserver
docker rm ssserver
read -p "Enter your password:" password
#docker run -dt --name ssserver -p 6443:6443 mritd/shadowsocks -s "-s 0.0.0.0 -p 6443 -m chacha20-ietf-poly1305 -k $password"
docker run -dt --name ssserver --restart always -p 6443:6443 -p 6500:6500/udp mritd/shadowsocks -m "ss-server" -s "-s 0.0.0.0 -p 6443 -m chacha20-ietf-poly1305 -k $password" -x -e "kcpserver" -k "-t 127.0.0.1:6443 -l :6500 -mode fast2"
echo "##############connection info##############"
echo "port=6443"
echo "encryption=chacha20-ietf-poly1305"
echo "password=$password"