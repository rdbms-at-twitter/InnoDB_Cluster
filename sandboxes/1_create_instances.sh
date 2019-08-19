#!/bin/sh

mysqlsh --log-level=8 << EOL

dba.deploySandboxInstance(3310, {password:'Welcome1'})
dba.deploySandboxInstance(3320, {password:'Welcome1'})
dba.deploySandboxInstance(3330, {password:'Welcome1'})

dba.checkInstanceConfiguration('root@localhost:3310', {password:'Welcome1'})

EOL
