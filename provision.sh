#!/bin/bash

#echo "deb http://ppa.hornet.zone stable main" >> /etc/apt/sources.list.d/hornet.list
echo "deb http://ppa.hornet.zone testing main" >> /etc/apt/sources.list.d/hornet.list

wget -qO - https://ppa.hornet.zone/pubkey.txt | sudo apt-key add -
apt update
apt install hornet

echo 'OPTIONS="--config config_comnet -p 1gb"' >> /etc/default/hornet
systemctl --now enable hornet.service
