#!/bin/sh

mysqlsh << EOL

dba.stopSandboxInstance(3310,{password:'Welcome1'});

EOL
