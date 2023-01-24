#!/bin/sh
CLOCK=`date +%s`
HOST=$1
SVC=$2
STATUS=$3
OUTPUT=$4
COMMAND_FILE='/usr/local/nagios/var/rw/nagios.cmd'
echo "[$CLOCK] PROCESS_SERVICE_CHECK_RESULT;$HOST;$SVC;$STATUS;$OUTPUT" > $COMMAND_FILE
exit 0
