#!/bin/bash


if git pull origin master | grep -q 'Already up to date'; then
   	echo "NOTHING TO CHANGE"
else
	find /var/www/html/wl2/dev/ -name "*.env" -exec sed -i 's/APP_ENV=LOCAL/APP_ENV=DEV/g' {} \;
	
	cd /mnt/Test/dev/
	git diff origin/master
fi


