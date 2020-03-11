#!/bin/bash

dominio=$1
echo "
zone \"$dominio.com.br\" {
type master;
file \"/etc/bind/db.$dominio\";
};"  >> /etc/bind/named.conf.local

cp ./db.modelo /etc/bind/db.$dominio

sed -i s/localhost/$dominio/g /etc/bind/db.$dominio

systemctl restart bind9
