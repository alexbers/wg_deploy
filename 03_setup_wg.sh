#!/bin/bash

# copy config
cp configs/bay_srv.conf /etc/wireguard/

# enable the service
systemctl enable wg-quick@bay_srv
systemctl start wg-quick@bay_srv

if [ $? -eq 0 ]; then
  echo "Wireguard should be running now, configs are in ./configs"
fi
