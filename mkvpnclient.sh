cd /etc/openvpn/openvpn-certs/server/easyrsa3
./easyrsa build-client-full $1
cd /etc/openvpn/
./makeconf.sh $1 > $1.conf
./mkinline.sh -i $1.conf -o $1.ovpn
