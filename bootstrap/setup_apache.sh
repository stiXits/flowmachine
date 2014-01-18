cd /vagrant/bootstrap

echo "### setting httpd.conf ###"
sudo cp config/httpd.conf /etc/httpd/conf/

echo "### setting vhost configuration ###"
sudo cp config/httpd-vhosts.conf /etc/httpd/conf/extra/httpd-vhosts.conf

echo "### populating vhost ###"
sudo cp /config/hosts /etc/hosts

echo "### starting httpd daemon"
sudo systemctl enable httpd
sudo systemctl start httpd

cd /vagrant