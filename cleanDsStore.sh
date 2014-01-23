#!/bin/sh
TODAY=$(date +%d/%m/%y_%r)
echo $TODAY

#${DATE} >> /Users/klemman/test.txt
find / -name ".DS_Store" -print -depth -exec rm {} \;