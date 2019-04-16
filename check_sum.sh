#!/bin/bash
file=/path/to/dir/with/backup/passwd.backup
if [[ ! -e $file ]]
then
echo 'Copying from original to backup'
cat /path/to/dir/with/original/passwd > /path/to/dir/with/backup/passwd.backup
elif
originalmd5=$(md5sum '/path/to/dir/with/original/passwd'|awk -F" " '{print$1}')
backupmd5=$(md5sum '/path/to/dir/with/backup/passwd.backup'|awk -F" " '{print$1}')
[ "$originalmd5" == "$backupmd5" ]
then
echo 'Backup exists, checksum is OK'
else
echo 'Checksum is not ok. Copying from original to backup'
cat /path/to/dir/with/original/passwd > /path/to/dir/with/backup/passwd.backup
fi
