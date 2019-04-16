#!/bin/bash
echo "Enter the number, plz"
read number
cd /path/to/dir/with/$number
ls -ltr | awk -F' ' '{print$9}'
echo "Choose the failik"
read failik
scp $failik user@destination_host:/destination/folder
echo "success!"
