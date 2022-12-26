#!/bin/bash

git pull origin master

find /mnt/Test/dev/ -name "*.env" -exec sed -i 's/DEV/LOCAL/g' {} \;

find /mnt/Test/testing/ -name "*.env" -exec sed -i 's/TEST/LOCAL/g' {} \;





