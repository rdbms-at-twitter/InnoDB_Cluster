#!/bin/sh

# Configure Router and Start Router
mysqlrouter --bootstrap root:password@localhost:3310 --force --user=mysql

# MySQL Router Configuratiton File
# cat /home/mysql/mysqlrouter/mysqlrouter.conf
mysqlrouter &

