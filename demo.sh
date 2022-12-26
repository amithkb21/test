#!/bin/bash

path=cd /mnt/Test/dev

if [ git pull origin master | grep -q 'Already up to date' ] then
        echo "NOTHING TO CHANGE"
elif [ $path git diff origin/master | grep -q 'LOCAl' ] then
        find /mnt/Test/dev -name "*.env" -exec sed -i 's/LOCAL/DEV/g' {} \;
        find /mnt/Test/testing -name "*.env" -exec sed -i 's/LOCAL/TEST/g' {} \;

else
        echo " do nothing "

fi


