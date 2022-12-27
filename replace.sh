#!/bin/bash

origin="origin"
branch="master"
commit_id=$(git log -n 1 --pretty=format:%H "$origin/$branch")

echo $commit_id 
git pull origin master 

commit_old=$(git log -n 2 --pretty=format:%H "$origin/$branch" | tail -1 )
echo $commit_old





