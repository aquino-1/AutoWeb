#!/bin/bash

delete=$1


rm -rf "/etc/bind/db.$delete.com";

rm -rf "/etc/apache2/sites-available/$delete";
rm -rf "/var/www/$delete/index.html";

deluser $delete -shell /bin/false -home /home/$delete
deluser $delete userftp
rm -rf /home/$delete/ftp



