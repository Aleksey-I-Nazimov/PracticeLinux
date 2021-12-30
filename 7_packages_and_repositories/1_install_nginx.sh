# Installing and removing nginx:--------------------------------------

# Instead of editing /etc/apt/sources.txt, downloading package and install it
# we can use apt intsall
echo "  --> Installing nginx"
sudo apt install nginx -y 1> nginx_installation.log

echo "  --> Checking nginx"
sudo nginx -h 1> nginx_check.log 2>&1

echo "  --> Removing nginx"
sudo apt autoremove nginx -y 1> nginx_deinstallation.log

