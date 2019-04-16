 #!/bin/bash
data=`date '+%H:%M:%S'`
touch ~/testdate/$data.txt
echo `date | awk -F" " '{print$2" "$3}'` >> ~/testdate/$data.txt

#!/bin/bash
find ~/testdate -mmin +17 -type f | xargs tar -cvzf time.tar.gz
find ~/testdate -mmin +17 -type f | xargs rm -f

* * * * * ~/date.sh
*/10 * * * * ~/trdate.sh

##http://blog.sedicomm.com/2017/07/24/kak-dobavit-zadanie-v-planirovshhik-cron-v-linux-unix/?fbclid=IwAR27JGMafc9hDJjdfhIQD8B3Csb6X40ANT48Z4cFt3J5ZDVvwIY4TPd1Vi0
