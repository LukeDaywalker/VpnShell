VpnShell
========
ocserv
------
### Install

    yum update
    yum install wget net-tools
    wget --no-check-certificate https://raw.githubusercontent.com/LukeDaywalker/VpnShell/master/ocserv-auto.sh
    chmod +x ocserv-auto.sh
    ./ocserv-auto.sh

### Setting

    systemctl stop ocserv.service
    vi /etc/ocserv/ocserv.conf
	...
    systemctl start ocserv.service

ss
--
### Install

~~wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev.sh~~
    
    wget --no-check-certificate https://raw.githubusercontent.com/LukeDaywalker/VpnShell/master/shadowsocks-libev.sh
    chmod +x shadowsocks-libev.sh
    ./shadowsocks-libev.sh 2>&1 | tee shadowsocks-libev.log


### Setting

    /etc/init.d/shadowsocks stop
    vi /etc/shadowsocks-libev/config.json
	...
    /etc/init.d/shadowsocks start