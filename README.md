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
	
	vi /etc/rc.d/rc.local
	============
	/sbin/service crond start 
	============
	
	crontab -e
	============
	0 19 * * 2 root /bin/sh /root/chinaroute.sh
	============
	
### Setting

    systemctl stop ocserv.service
    vi /etc/ocserv/ocserv.conf
	...
    systemctl start ocserv.service
	
	#username为你要添加的用户名
	ocpasswd -c /etc/ocserv/ocpasswd username

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