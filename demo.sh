#!/bin/bash

#find /mnt/Test/var/ -name "*.txt" -exec sed -i 's/DEV=LOCAL/DEV=DEV/g' {} \; && find /mnt/Test/tar -name "*.txt" -exec sed -i 's/TEST=LOCAL/TEST=TEST/g' {} \;

if ./demo.sh | grep -q 'Already exist'; then
   echo "pwd"
fi


