cd /vagrant/bootstrap

./setup_mirrors.sh
./setup_installation.sh
./setup_apache.sh
./setup_php.sh
./setup_mysql.sh

./setup_composer.sh
./setup_flow.sh

cd /vagrant
