echo "### setting httpd.conf ###"
sudo cp bootstrap/config/httpd.conf /etc/httpd/conf/

echo "### starting httpd daemon"
sudo systemctl enable httpd
sudo systemctl start httpd
