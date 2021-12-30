>> echo "xxxxxxx" > /home/alex/dev/test.txt
>> crontab -e
>> */10 * * * *	cp /home/alex/dev/test.txt /home/alex/dev/test.txt.bak
>> cat /var/log/syslog
