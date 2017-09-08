#!/bin/sh

mysqlsh << EOL

dba.stopSandboxInstance(3310,{password:'password'});

EOL
