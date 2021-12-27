# Creating group:----------------------------------------------------
sudo groupadd developer
sudo cat /etc/group | grep "developer" > result_4_created_group.log


# Creating users:----------------------------------------------------
sudo useradd dev1 -M -N
sudo useradd dev2 -M -N
sudo usermod -a -G developer dev1
sudo usermod -a -G developer dev2
sudo cat /etc/group | grep "developer" > result_4_created_users.log


# Adding SGID bit for directory:-------------------------------------
mkdir developer_directory
sudo chown dev1 developer_directory
sudo chown :developer developer_directory
sudo chmod u+rwx,g+rwx,o-rwx developer_directory
sudo chmod g+s developer_directory

ls -li | grep "developer_directory" > result_4_created_dev_directory.log
