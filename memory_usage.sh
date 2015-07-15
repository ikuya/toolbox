#!/bin/bash
NUM=30
if [ $# -ge 1 ]; then
    # Test for numeric argument.
    expr "$1" + 1 > /dev/null 2>&1
    if [ $? -lt 2 ]; then
        NUM=$1
    else
        echo "Usage: memory-usage [count]"
        exit 1
    fi  
fi
echo -e "PID\tRSS[kB]\tPROCESS"
ps aux | awk '{printf("%d\t%d\t", $2, $6)}{for(i=11;i<NF;i++){printf("%s ", $i)}print $NF}' |sort -r -n -k 2 |head -n $NUM 
exit 0
