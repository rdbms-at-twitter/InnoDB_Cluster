#!/bin/sh

mysqlsh << EOL

dba.stopSandboxInstance(3330,{password:'Welcome1'});

EOL
