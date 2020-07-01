#!/bin/bash
##test commit
##another test
vrbl=`zgrep -h 'number_search' /path/to/dir/*|grep '^12:'|awk -F'[' '{print$2}'|sort|uniq|sed 's/]//'`
for expl in $vrbl
do
zgrep -h $expl path/to/dir/*
done
