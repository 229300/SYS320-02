#!/bin/bash

timestamp=$(date "+%a %b %d %I-%M-%S %p")
echo "timestamp" >> fileaccesslog.txt

sed -i 's/:/-/g' fileaccesslog.txt

{
  echo "To: daniel.scott@mymail.champlain.edu"
  echo "Subject: File Access Log"
  echo ""
  cat fileaccesslog.txt
} > emailform.txt

cat emailform.txt | ssmtp daniel.scott@mymail.champlain.edu
