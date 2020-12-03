echo "client
dev tun
;proto udp
proto tcp
remote <ip> <port>
resolv-retry infinite
nobind
persist-key
persist-tun
ca /etc/openvpn/ca.crt
cert /etc/openvpn/openvpn-certs/server/easyrsa3/pki/issued/$1.crt
key /etc/openvpn/openvpn-certs/server/easyrsa3/pki/private/$1.key
remote-cert-tls server
tls-auth /etc/openvpn/ta.key 1
comp-lzo
verb 3
"
