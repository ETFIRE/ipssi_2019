#!/bin/bash

date="$(date '+%Y-%m-%d-%T')"
if curl -s --head  --request GET www.google.com | grep "200 OK" > /dev/null; then 
   echo "$date INTERNET OK"
else
   echo "$date INTERNET FAIL"
fi


echo "$date INTERNET OK" >> /tmp/ls07.log 2>> /tmp/ls_err07.log
echo "ls ok"
cat /tmp/ls07.log
cat /tmp/ls_err07.log

