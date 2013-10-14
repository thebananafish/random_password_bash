#!/bin/sh

PASS_FILE=animals.txt # the file from which to get passwords
USER=test # the username who's password is to be changed
EMAIL=test@example.com # the email to send the new password too

if [ -e ./$PASS_FILE ]; then # if the file name in PASS_FILE above exists

    NEW_PASS=`sort -R $PASS_FILE | head -n 1` # sort the file randomly and set NEW_PASS to one of the passwords
    echo "$NEW_PASS" | mail -s 'Monthly Password Change' $EMAIL # send the new password to the email
    echo -e "$NEW_PASS\n$NEW_PASS" | passwd $USER # set the new password

else # if the file in PASS_FILE does not exist

    echo "password text file not found" # print out an error message
    
fi # end the conditional
