#!/bin/bash

ftp=$1

echo "

RootLogin off
RequireValidShell off
<Limit LOGIN>
DenyGroup !userftp
</Limit>
<IfModule mod_facts.c>
FactsAdvertise off
</IfModule> " >> /etc/proftpd/proftpd.conf

addgroup userftp
adduser $ftp -shell /bin/false -home /home/$ftp
adduser $ftp userftp

service proftpd restart

mkdir /home/$ftp/ftp
chmod 777 /home/$ftp/ftp/
systemctl restart proftpd.service
