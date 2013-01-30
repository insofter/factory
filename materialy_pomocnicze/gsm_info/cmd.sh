__START__
usb_modeswitch -c ~/gsm/e1750.cfg
mkdir -p /tmp/ppp/peers
pppd call iplus
cat /etc/ppp/resolv.conf >> /etc/resolv.conf

__TEST__
ls -al /dev/ttyUSB*
ifconfig ppp0
cat /etc/resolv.conf
ping 213.180.141.140
ping onet.pl
pidof pppd > /dev/null && echo yes || echo no

__STOP__
killall pppd


__NOT_USED__
route add default gw 10.64.64.64




/* TODO */
link do tmp
resolv conf w tmp
ln -s /tmp/resolv.conf /etc/resolv.conf 
ln -s /tmp/ppp /etc/ppp
