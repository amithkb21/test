#!/bin/bash


if git pull origin master | grep -q 'Already up to date'; then
   	echo "NOTHING TO CHANGE"
else
	find /mnt/Test/dev -name "*.txt" -exec sed -i 's/DEV=LOCAL/DEV=DEV/g' {} \; && find /mnt/Test/testing -name "*.txt" -exec sed -i 's/TEST=LOCAL/TEST=TEST/g' {} \;
	cd /mnt/Test/dev/
	git diff origin master
fi


