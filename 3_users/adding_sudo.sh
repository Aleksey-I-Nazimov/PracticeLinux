# Making the new user:-----------------------------------------------
echo "  --> Making the new user"
sudo useradd -M -N super_apt
sudo cat /etc/passwd | grep "super_apt" > 1_creating_new_user.log


# Adding sudo:-------------------------------------------------------
echo "  --> Adding sudo"
super_apt ALL=(ALL:ALL) NOPASSWD: /usr/bin/apt update

# Checking user priviledges:-----------------------------------------
echo "  --> Checking the root command"
su super_apt
apt update > 2_update.log

