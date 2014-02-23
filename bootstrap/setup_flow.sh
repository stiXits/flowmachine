cd /srv

sudo chown vagrant:http http
sudo chmod 775 http

cd http

sudo -u vagrant composer create-project --dev --keep-vcs typo3/flow-base-distribution flow 2.0.0 phpunit/phpunit 3.7.* mikey179/vfsstream 1.1.*

echo "### running composer ###"
cd flow

sudo -u vagrant cp /vagrant/bootstrap/config/Settings.yaml Configuration/Development

echo "### running rights script ###"
sudo ./flow core:setfilepermissions vagrant http http

sudo systemctl start httpd

cd /vagrant
