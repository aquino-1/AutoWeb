#!/bin/bash
site=$1
touch /etc/apache2/sites-available/$site.conf
echo "

<VirtualHost *:80>
ServerName www.$site.com.br
DocumentRoot /var/www/$site
</VirtualHost> " >> /etc/apache2/sites-available/$site.conf
a2ensite $site.conf
mkdir /var/www/$site
touch /var/www/$site/index.html

echo "

<meta charset=\"utf-8\" />

<html>

<head>

<title> janela 1 </title>

</head>

<body bgcolor=\"#FF00FF\">
<div>
<center>
<h1> <font color=\"#FF8C00\">

ZEUSSSSSSSSSSSSSS

</h1>
</center>
</div>
</body>
</html> " >> /var/www/$site/index.html
systemctl restart apache2
