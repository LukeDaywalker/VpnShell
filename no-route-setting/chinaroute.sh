wget -N http://ftp.afrinic.net/pub/stats/afrinic/delegated-afrinic-extended-latest
wget -N http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-extended-latest
wget -N http://ftp.arin.net/pub/stats/arin/delegated-arin-extended-latest
wget -N http://ftp.lacnic.net/pub/stats/lacnic/delegated-lacnic-extended-latest
wget -N http://ftp.ripe.net/pub/stats/ripencc/delegated-ripencc-extended-latest
cat delegated-afrinic-extended-latest delegated-apnic-extended-latest delegated-arin-extended-latest delegated-lacnic-extended-latest delegated-ripencc-extended-latest >delegated-all-latest
cat delegated-all-latest | grep ipv4 | grep CN | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' >cnroute.txt
rm -f delegated*
python chinaroute.py

cp /etc/ocserv/ocserv-header.conf ocserv-header.conf
python ocserv-cn-no-route.py
cat ocserv-header.conf cn-no-route2.txt >ocserv.conf
mv -f ocserv.conf /etc/ocserv/ocserv.conf
rm -f ocserv-header.conf cn-no-route2.txt
