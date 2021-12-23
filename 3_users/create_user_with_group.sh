

# Creating the new user named as the developer:----------------------
echo "  --> Creating the new user"
sudo useradd developer -M -N
sudo cat /etc/passwd | grep "developer" > 1_created_user.log


# Creating the new group named as the developers:--------------------
echo "  --> Creating the new group"
sudo groupadd developers
sudo cat /etc/group | grep "developers" > 2_new_group_result.log


# Adding the developer to the developers:----------------------------
echo "  --> Adding the new user to the new group"
sudo usermod -a -G developers developer
sudo cat /etc/group | grep "developers" > 3_new_user_with_group.log


# Removing the developer from the developers:------------------------
echo "  --> Removing the new user from the new group"
sudo gpasswd -d developer developers
sudo cat /etc/group | grep "developers" > 4_new_user_without_group.log

# Cleaning:----------------------------------------------------------
echo "  --> Removing the new user and removing the new group"
sudo deluser developer --remove-all-files
sudo groupdel developers

