#!/bin/bash
countingCurlAccess() {

	grep "curl/7.81.0" /var/log/apache2/access.log | awk '{print$1, "\"" $12 "\""}' | sort | uniq -c 
}

countingCurlAccess

