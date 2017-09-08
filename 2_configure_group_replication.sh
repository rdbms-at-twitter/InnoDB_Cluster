#!/bin/sh

mysqlsh << EOL

shell.connect ('root:password@localhost:3310')
cluster = dba.createCluster('singleCluster')
cluster.addInstance('root:password@localhost:3320')
cluster.addInstance('root:password@localhost:3330')

cluster = dba.getCluster()
cluster.status()

EOL
