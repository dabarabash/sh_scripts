#!/bin/bash
echo "Type 1 if event was today or type the date in format YYYY-MM-DD if event was in other day"
read date
echo "Type MSISDN"
read number
if [ "$date" = "1" ]
then
ssh user@source_host grep -h $number /path{to1,to2}/node{1,2}/logs|grep 'filtering_text'|awk -F" " '{print$1" "$12" "$15" "$16}'
else
zgrep -h $number /path/to/dir/with/*/logs-$date.log.gz|grep 'filtering_text'|awk -F" " '{print$1" "$12" "$15" "$16}'
fi
