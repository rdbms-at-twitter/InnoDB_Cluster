#!/bin/sh

mysqlsh << EOL

dba.startSandboxInstance(3310);
shell.connect ('root:Welcome1@localhost:3320')
var cluster = dba.getCluster("singleCluster")
cluster.rejoinInstance('root:Welcome1@localhost:3310')
cluster.status()

EOL
