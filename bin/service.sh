#!/bin/bash

# Name of the process to monitor
service=apache2

# Read in the JSON template
JSON=`cat ./templates/service-template.json`

#Define timestamp
tstamp=`date +%T`
MSG=""

#Check if process is running
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))

then
echo "$tstamp : $service is running!"
else
MSG="{$tstamp : $service is stopped unexpectedly, starting up!}"
JSON=`echo ${JSON} | sed -e "s@EVENTS@${MSG}@"`
echo "${JSON}"

/etc/init.d/$service start
fi