# this is for automatically update script
#! /bin/bash

DATE=$(date -d)
git add --all
git commit -m "this is the automatically update @ $DATE"
git push origin master
