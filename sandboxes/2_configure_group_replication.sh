#!/bin/sh

mysqlsh << EOL

shell.connect ('root:Welcome1@127.0.0.1:3310')
cluster = dba.createCluster('singleCluster')
cluster.addInstance('root:Welcome1@127.0.0.1:3320')
cluster.addInstance('root:Welcome1@127.0.0.1:3330')

cluster = dba.getCluster()
cluster.status()

EOL
