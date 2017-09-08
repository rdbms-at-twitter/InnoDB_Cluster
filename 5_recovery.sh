#!/bin/sh

mysqlsh << EOL

dba.startSandboxInstance(3310);
shell.connect ('root:password@localhost:3310')
var cluster = dba.getCluster("singleCluster")
cluster.rejoinInstance('root:password@localhost:3310')
cluster.status()

EOL
