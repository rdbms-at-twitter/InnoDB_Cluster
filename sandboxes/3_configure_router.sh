#!/bin/sh

# Configure Router and Start Router
/usr/local/mysqlrouter/bin/mysqlrouter --bootstrap root:Welcome1@127.0.0.1:3310 --force --user=mysql

# MySQL Router Configuratiton File
# cat /usr/local/mysqlrouter/mysqlrouter.conf
/usr/local/mysqlrouter/bin/mysqlrouter &

