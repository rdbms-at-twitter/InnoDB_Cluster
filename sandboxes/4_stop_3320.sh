#!/bin/sh

mysqlsh << EOL

dba.stopSandboxInstance(3320,{password:'Welcome1'});

EOL
