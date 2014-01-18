cd /vagrant/flow

echo "### running composer ###"
composer install

cp /vagrant/bootstrap/config/Settings.yaml Configuration/Development

cd /vagrant