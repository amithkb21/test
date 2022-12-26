#!/bin/bash


if git pull origin master | grep -q 'Already up to date'; then
   	echo "NOTHING TO CHANGE"
else
	find /var/www/html/wl2/dev/ -name "*.env" -exec sed -i 's/LOCAL/DEV/g' {} \;
	find /var/www/html/wl2/testing/ -name "*.env" -exec sed -i 's/LOCAL/TEST/g' {} \;
	
	cd /mnt/Test/dev/
	git diff origin/master
fi


