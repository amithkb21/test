#!/bin/bash

origin="origin"
branch="master"
commit_id=$(git log -n 1 --pretty=format:%H "$origin/$branch")

echo $commit_id 
git pull origin master 

commit_old=$(git log -n 1 --pretty=format:%H "$origin/$branch")
echo $commit_old > /home/amitayare/file1.txt
value='cat /home/amitayare/file1.txt'  
echo "$value"  
if [ $commit_id == $commit_old ];

then 
	echo " NO new commits "
else
	echo " new commit id is FOUND "

fi

