#!/bin/bash

if git pull origin master | grep -q 'Already up to date'; then
	echo "NOTHING TO CHANGE"
else
   echo "None of the condition met"
fi
