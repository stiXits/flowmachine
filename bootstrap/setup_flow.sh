cd /srv

sudo chown vagrant:http http
sudo chmod 775 http

cd http

composer create-project --dev --keep-vcs typo3/flow-base-distribution flow 2.0.0

echo "### running composer ###"
cd flow

cp /vagrant/bootstrap/config/Settings.yaml Configuration/Development

echo "### running rights script ###"
sudo ./flow core:setfilepermissions vagrant http http

sudo systemctl start httpd

cd /vagrant
