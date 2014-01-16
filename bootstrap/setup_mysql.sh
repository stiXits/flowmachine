cd /vagrant/bootstrap

echo "### setting global my.cnf ###"
sudo cp config/my.cnf /etc/mysql/my.cnf

echo "### starting mysqld daemon ###"
sudo systemctl start mysqld
sudo systemctl enable mysqld

echo "### triggering mysql configuration ###"
sudo mysql_secure_installation

echo "### restarting daemon ###"
sudo systemctl restart mysqld

cd /vagrant