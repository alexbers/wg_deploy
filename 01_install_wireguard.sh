#!/bin/bash

# installs wireguard and iptables
apt -qq update && apt -qqq install -y wireguard-tools iptables
