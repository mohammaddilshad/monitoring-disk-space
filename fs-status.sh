#!/bin/bash

#monitoring the free fs disk space

FU=$(df -h | egrep -v "Filesystem|tmpfs" | grep "sda3" | awk '{print $5}' | tr -d %)

if [[ $FU -ge 80 ]]
then
	echo "WARNING! disk space is running low - Memory Used: $FU %"
else
	echo "All good! - Memory Used: $FU %"
fi
