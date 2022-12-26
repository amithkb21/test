#!/bin/bash

path=cd /mnt/Test/dev

if [ git pull origin master | grep -q 'Already up to date' ] then
<<<<<<< HEAD
   	echo "NOTHING TO CHANGE"
elif [ $path git diff origin/master | grep -q 'LOCAl' ] then
	find /mnt/Test/dev -name "*.env" -exec sed -i 's/LOCAL/DEV/g' {} \;
	find /mnt/Test/testing -name "*.env" -exec sed -i 's/LOCAL/TEST/g' {} \;

else 
	echo " do nothing "
	
=======
        echo "NOTHING TO CHANGE"
elif [ $path git diff origin/master | grep -q 'LOCAl' ] then
        find /mnt/Test/dev -name "*.env" -exec sed -i 's/LOCAL/DEV/g' {} \;
        find /mnt/Test/testing -name "*.env" -exec sed -i 's/LOCAL/TEST/g' {} \;

else
        echo " do nothing "

>>>>>>> 49d3a1d33c48cc565d7bb3f124d5536a5a6e1461
fi


