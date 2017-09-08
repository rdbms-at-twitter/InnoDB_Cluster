#!/bin/sh

/usr/local/mysql/bin/mysql -u root -ppassword -h 127.0.0.1 -P 6446 -e "select 'R-Port:6446',@@hostname,@@port;"
/usr/local/mysql/bin/mysql -u root -ppassword -h 127.0.0.1 -P 6447 -e "select 'R-Port:6447',@@hostname,@@port;"
