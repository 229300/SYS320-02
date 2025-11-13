#!/bin/bash

logdir="/var/log/auth.log/"

alllogs=$(ls "${logdir}" | grep "auth.log" | grep -v "other_vhosts" | grep -v "gz")

echo "${alllogs}"

:> auth.txt

for j in ${alllogs}
do
        cat "${logdir}${j}" >> auth.txt
done

tail auth.txt

