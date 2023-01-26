#!/bin/sh
NOW=`date +%s`
HOST=$1
STATUS=$2
OUTPUT=$3
COMMAND_FILE='/usr/local/nagios/var/rw/nagios.cmd'
echo "[$NOW] PROCESS_HOST_CHECK_RESULT;$HOST;$STATUS;$OUTPUT" > $COMMAND_FILE
exit 0
