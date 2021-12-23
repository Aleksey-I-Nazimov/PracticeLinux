# Making the new user:-----------------------------------------------
echo "  --> Making the new user"
sudo useradd -M -N super_apt
sudo cat /etc/passwd | grep "super_apt" > 1_creating_new_user.log


# Adding sudo:-------------------------------------------------------
echo "  --> Adding sudo"
sudo echo "super_apt ALL=(ALL) NOPASSWD: /usr/bin/apt update" > /etc/sudoers.d/super_apt


# Checking user priviledges:-----------------------------------------
echo "  --> Checking the root command"
set user "alex"
set password "alex19121988"
su super_apt
apt update > 2_update.log
su "$user"
expect "password: "
send "$password"
sudo deluser super_apt --remove-all-files


