sudo apt update
sudo apt install -y apache2
sudo service apache2 start
echo "Apache2_status: $(sudo service apache2 status | grep -w Active | awk '{print $2}')"
