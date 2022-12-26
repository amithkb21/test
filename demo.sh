#!/bin/bash


if git pull origin master | grep -q 'Already up to date'; then
   	echo "NOTHING TO CHANGE"
else
	find /mnt/Test/dev -name "*.env" -exec sed -i 's/APP_ENV=LOCAL/APP_ENV=DEV/g' {} \;
	find /mnt/Test/testing -name "*.env" -exec sed -i 's/s/APP_ENV=LOCAL/APP_ENV=TEST/g' {} \;
	
	cd /mnt/Test/dev/
	git diff origin/master
fi


