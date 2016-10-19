#!/bin/bash
USER=$1
PASS=$2
LICIP=$3
DOWN=$4
IP=`hostname -i`
localip=`hostname -i | cut --delimiter='.' -f -3`

cd /tmp/

printenv > ENV

