#!/bin/bash
# Check all users who are able to login (shell set to a usable shell) and exlude the sync and root users.
echo "Command run: passwd --status USER for each user on with login permissions on the system."
for i in `egrep -v 'nologin|/bin/false|sync|root' /etc/passwd | cut -d: -f 1`; do 
    passwd --status $i; TMPUSER=$(passwd --status $i|awk '{print $2}'); 
    if [[ $TMPUSER == 'P' ]];
        then echo "USER: $i is password protected.";
    elif [[ $TMPUSER == 'L' ]];
        then echo "USER: $i is password locked.";
    else
       echo "USER: $i is not password protected" 
    fi; 
done
echo ""
echo ""
echo ""
