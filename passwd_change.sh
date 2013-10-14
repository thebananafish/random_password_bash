#!/bin/sh

PASS_FILE=animals.txt
USER=test
EMAIL=test@example.com

if [ -e ./$PASS_FILE ]; 

then

    NEW_PASS=`sort -R $PASS_FILE | head -n 1`
    echo "$NEW_PASS" | mail -s 'Monthly Password Change' $EMAIL
    echo -e "$NEW_PASS\n$NEW_PASS" | passwd $USER

else
        echo "password text file not found"
    fi

