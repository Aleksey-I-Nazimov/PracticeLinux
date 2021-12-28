>> echo "xxxxxxx" > test.txt
>> crontab -e
>> 0/10 * * * *	cp test.txt test.txt.bak
>> cat /var/log/syslog
