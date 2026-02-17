# WireGuard deploy scripts for Ubuntu #

A script to quickly set up WireGuard VPN on Ubuntu.

It generates VPN configs, starts the VPN and adds it to autorun

Tested on Ubuntu 18.04, 20.04, 21.10, 22.04 and 24.04.

## Usage ##
    
1. `git clone https://github.com/alexbers/wg_deploy.git; cd wg_deploy`
2. `./wg_deploy.sh`

If all ok, the client configs will be ./configs dir

To fix problems with MTU on some providers add this rule to iptables:

`echo 'iptables -A FORWARD -p tcp --tcp-flags SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu' >> /etc/rc.local; chmod +x /etc/rc.local`

![Demo](https://alexbers.com/wg.png)


