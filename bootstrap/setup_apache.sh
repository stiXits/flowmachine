cd /vagrant/bootstrap

echo "### setting httpd.conf ###"
sudo cp config/httpd.conf /etc/httpd/conf/

echo "### starting httpd daemon"
sudo systemctl enable httpd
sudo systemctl start httpd
