#!/bin/bash


if git pull origin master | grep -q 'Already up to date'; then
   	echo "NOTHING TO CHANGE"
else
	find /mnt/Test/dev/ -name "*.env" -exec sed -i 's/LOCAL/DEV/g' {} \;

	find /mnt/Test/testing/ -name "*.env" -exec sed -i 's/LOCAL/TEST/g' {} \;
fi


