#!/bin/sh

# GR Basic Configuration is already Configured 

/usr/local/mysql/bin/mysql -uroot -pWelcome1  -h 127.0.0.1 -P3310 -e "SELECT * FROM performance_schema.replication_group_members;"
