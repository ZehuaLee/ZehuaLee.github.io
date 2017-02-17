# this is for automatically update script
#! /bin/bash

DATE=(date -d '1970-01-01 UTC 946684800 seconds' +"%Y-%m-%d %T %z")
git add --all
git commit -m "this is the automatically update @ $DATE"
git push origin master
