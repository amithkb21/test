#!/bin/bash

if git pull origin master | grep -q 'Already up to date'; then
	echo "NOTHING TO CHANGE"
elif git diff origin/master; then
else
   echo "None of the condition met"
fi


