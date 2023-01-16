#!/bin/bash
calculate_disk_usage(){
    # Calculate disk uses
    USED_DISK_SPACE=`df -h ${MOUNT_PATH} | grep -v Filesystem | awk '{print $5}' | sed 's/%//g'`
     if (($USED_DISK_SPACE < 80)); then
        echo "OK - $USED_DISK_SPACE % of disk space used."
        exit 0
    elif (($USED_DISK_SPACE>=80 && $USED_DISK_SPACE<=90)); then
        echo "WARNING - $USED_DISK_SPACE % of disk space used."
        exit 1
    elif (($USED_DISK_SPACE>90 &&$USED_DISK_SPACE <=100)); then
        echo "CRITICAL - $USED_DISK_SPACE % of disk space used."
        exit 2
    else
        echo "UNKNOWN - $USED_DISK_SPACE % of disk space used."
        exit 3
    fi
}


if [ -z "$1" ]
then
        echo "Missing parameters!"
        exit 3
else
        MOUNT_PATH=$1
fi

calculate_disk_usage

