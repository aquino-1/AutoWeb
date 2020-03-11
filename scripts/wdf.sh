#!/bin/bash

for dominio in $(cat $1)
do
	ss=$2(echo $1 | cut -d. -f1)
 	./dominio.sh $dominio
       ./url.sh $dominio
       ./ftp.sh $dominio
done
