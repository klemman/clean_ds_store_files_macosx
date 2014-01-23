#!/bin/sh

TODAY=$(date +%d/%m/%y_%r)
echo '\n'
echo '-- BEGIN JOB EXECUTION : '$TODAY' --'

# perform '.DS_Store' files removal on entire FileSystem
find / -name ".DS_Store" -print -depth -exec rm {} \;