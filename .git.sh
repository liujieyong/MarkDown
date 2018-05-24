#! bin/bash
cd ~/Documents/GitHub/MarkDown
DATE=`date +%Y-%m-%d` 
git add .
git commit -m "commit by L at $DATE `date +%H:%M:%S`"
git push origin master
