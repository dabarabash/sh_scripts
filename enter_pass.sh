#!/bin/bash
echo "Type 1 if event was today or type the date in format YYYY-MM-DD if event was in other day"
read date
echo "Type number"
read number
if [ "$date" = "1" ]
then
ssh user@source_host1 grep $number /path/to/dir/with?/logs*|grep 'filtering_text'|sed 's/\]\[/ /g;s/\[//g;s/\]//g'|awk -F" " '{print$1" "$3" "$12" "$15}'
ssh user@source_host2 grep $number /path/to/dir/with?/logs*|grep 'filtering_text'|sed 's/\]\[/ /g;s/\[//g;s/\]//g'|awk -F" " '{print$1" "$3" "$12" "$15}'
ssh user@source_host3 grep $number /path/to/dir/with?/logs*|grep 'filtering_text'|sed 's/\]\[/ /g;s/\[//g;s/\]//g'|awk -F" " '{print$1" "$3" "$12" "$15}'
ssh user@source_host4 grep $number /path/to/dir/with?/logs*|grep 'filtering_text'|sed 's/\]\[/ /g;s/\[//g;s/\]//g'|awk -F" " '{print$1" "$3" "$12" "$15}'
else
zgrep -h $number /path/to/dir/with?/logs* | grep 'filtering_text'|sed 's/\]\[/ /g;s/\[//g;s/\]//g'|awk -F" " '{print$1" "$3" "$12" "$15}'
