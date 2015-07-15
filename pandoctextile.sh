#!/bin/sh

if [ $# -ge 2 ]; then
    pandoc -s -S $1 -t textile -o $2
    exit 0
else
    exit 1
fi
