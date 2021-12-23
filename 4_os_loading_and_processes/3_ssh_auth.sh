
# Disabling authentication:-------------------------------------------
echo "  --> Disabling authentication"
sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/g' /etc/ssh/sshd_config
cat /etc/ssh/sshd_config | grep "PasswordAuthentication"

echo "  --> Restarting"
sudo systemctl restart sshd
sudo systemctl reload sshd

echo "  --> Enabling authentication"
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
cat /etc/ssh/sshd_config | grep "PasswordAuthentication"

echo "  --> Restarting"
sudo systemctl restart sshd

# cntrl+d means EOF
# cntrl+c means killing process

# restart means full restart with stopping and running
# reload means full config reload without restarting app process

