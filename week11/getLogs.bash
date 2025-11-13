#!/bin/bash

logdir="/var/log/apache2/"

alllogs=$(ls "${logdir}" | grep "access.log" | grep -v "other_vhosts" | grep -v "gz")

echo "${alllogs}"

:> access.txt

for j in ${alllogs}
do
	cat "${logdir}${j}" >> access.txt
done

tail access.txt

