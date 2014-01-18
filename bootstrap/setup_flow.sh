cd /vagrant/flow

echo "### running composer ###"
composer install

cp /vagrant/bootstrap/config/Settings.yaml Configuration/Development

cd /vagrant/flow

echo "### running rights script ###"
sudo ./flow core:setfilepermissions john www-data www-data

cd /vagrant