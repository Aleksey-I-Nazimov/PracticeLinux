useradd test_user -M -N
cat /etc/passwd | grep "test_user"
deluser test_user --remove-all-files
cat /etc/passwd | grep "test_user"

