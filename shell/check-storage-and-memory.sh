#!/usr/bin/bash

check() {    
    # print message
    echo "memory Usage"
    # show memory in megabytes
    free --mega
    echo ""
    # wait 3 seconds
    sleep 3

    # print message
    echo "Disk in GB"
    # -BG block size G, using gigabytes
    df -BG
    # new line
    echo ""
    # wait 3 seconds
    sleep 3

    # print message
    echo "Filesystem Usage"
    # disk usage human readable, don't include tmpfs, print 1st and 5th column only 
    df -h  | grep -v tmpfs | awk '{ print $1 "\t" $5 }'
    # new lines
    echo ""
    echo ""
    # wait 1 minute
    sleep 1m
}

# infinite loop
while :
do 
    # check >> $file
    check
done