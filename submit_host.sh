#!/bin/sh
NOW=`date +%s` 
HOST=$1 
STATUS=$2 
OUTPUT=$3 
echo "[$NOW] PROCESS_HOST_CHECK_RESULT;$HOST;$STATUS;$OUTPUT" \ 
      >/var/nagios/rw/nagios.cmd 
exit 0 
