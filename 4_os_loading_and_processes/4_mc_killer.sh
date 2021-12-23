
echo "  --> Starting mc"
nohup mc &
echo "  --> Killing mc"
sudo ps -aux | grep "mc" | awk {'print $2'} | xargs kill -9
