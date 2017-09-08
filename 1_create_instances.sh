#!/bin/sh

mysqlsh << EOL

dba.deploySandboxInstance(3310, {password:'password'})
dba.deploySandboxInstance(3320, {password:'password'})
dba.deploySandboxInstance(3330, {password:'password'})

dba.checkInstanceConfiguration('localhost:3310', {password:'password'})

EOL
