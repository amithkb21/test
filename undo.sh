#!/bin/bash

git pull origin master

find /mnt/Test/dev/ -name "*.env" -exec sed -i 's/APP_ENV=DEV/APP_ENV=LOCAL/g' {} \;

find /mnt/Test/testing/ -name "*.env" -exec sed -i 's/APP_ENV=TEST/APP_ENV=LOCAL/g' {} \;





