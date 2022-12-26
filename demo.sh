#!/bin/bash

if git pull origin master | grep -q 'Already up to date'; then
	echo "NOTHING TO CHANGE"
else
   cd /mnt/Test/dev/
   git diff origin/master
   
   
fi
