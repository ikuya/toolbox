#!/bin/sh

if [ $# -ge 2 ]; then
    iconv -t UTF-8 $1 | pandoc -f markdown -o $2 -V documentclass=ltjarticle --latex-engine=lualatex
    exit 0
else
    exit 1
fi
