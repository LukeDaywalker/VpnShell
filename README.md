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

	
	yum install python-netaddr -y

	wget --no-check-certificate https://raw.githubusercontent.com/LukeDaywalker/VpnShell/master/no-route-setting/chinaroute.sh
	wget --no-check-certificate https://raw.githubusercontent.com/LukeDaywalker/VpnShell/master/no-route-setting/chinaroute.py
	wget --no-check-certificate https://raw.githubusercontent.com/LukeDaywalker/VpnShell/master/no-route-setting/ocserv-cn-no-route.py
	chmod +x chinaroute.sh
    ./chinaroute.sh
	
	vim /etc/crontab
	============
	0 19 * * 2 root /bin/sh root/chinaroute.sh
	============
	service crond reload
	
	启动：
	service crond start
	重启：
	service crond restart
	最后还有一个简单的停止：
	service crond stop
	
	service crond status
	
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