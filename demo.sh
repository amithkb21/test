#!/bin/bash

#find /mnt/Test/var/ -name "*.txt" -exec sed -i 's/DEV=LOCAL/DEV=DEV/g' {} \; && find /mnt/Test/tar -name "*.txt" -exec sed -i 's/TEST=LOCAL/TEST=TEST/g' {} \;

if git pull origin master | grep -q 'Already up to date'; then
   pwd 
else
	echo "chnages happen"
fi


