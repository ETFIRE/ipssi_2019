#!/bin/bash

ls -l >> /tmp/ls.log 2>> /tmp/ls_err.log
echo "ls ok"
cat /tmp/ls.log
cat /tmp/ls_err.log




