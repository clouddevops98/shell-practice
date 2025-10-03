#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem | awk '{print $7}')

while IFS=read -r line
do
    echo "Line: $line"
done <<< $DISK_USAGE