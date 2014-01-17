cd /vagrant/bootstrap

echo "### setting global my.cnf ###"
sudo cp config/my.cnf /etc/mysql/my.cnf

echo "### starting mysqld daemon ###"
sudo systemctl start mysqld
sudo systemctl enable mysqld

echo "### triggering mysql configuration ###"
sudo ./setup_secure_mysql_silent.sh

echo "### standard configuration: ###"
echo "### user: root passwd: toor ###"
echo "### user: flow passwd: flow ###"

#sudo systemctl stop mysqld
#sudo mysqld_safe --skip-grant-tables &
#sleep 2
#echo "### disabling root password ###"
#mysql -u root mysql < config/mysql_disable_password.sql
#sudo killall mysqld
#sleep 2

echo "### establishing mysql standard configuration ###"
#sudo systemctl start mysqld
mysql -u root -ptoor < config/mysql_standard_configuration.sql
#sudo systemctl stop mysqld
echo "### done                                      ###"

#sudo mysqld_safe --skip-grant-tables &
#sleep 2
#echo "### resetting root password ###"
#mysql -u root mysql < config/mysql_enable_password.sql
#sudo killall mysqld
#sleep 2

echo "### restarting daemon ###"
sudo systemctl restart mysqld

cd /vagrant