#!/bin/bash

origin="origin"
branch="master"
commit_id=$(git log -n 1 --pretty=format:%H "$origin/$branch")

echo $commit_id 
git pull origin master 

commit_old=$(git log -n 1 --pretty=format:%H "$origin/$branch")
echo $commit_old

if [ $commit_id == $commit_old ];

then 
	echo " No new commits "
else
	echo " new commit id found "

fi

