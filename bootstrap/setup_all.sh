cd /vagrant/bootstrap

./setup_mirrors.sh
./setup_installation.sh
./setup_apache.sh
./setup_php.sh
./setup_mysql.sh

./setup_composer.sh

echo "### cleaning pacman cache ###"
sudo pacman -Scc --noconfirm
rm  -rf /var/cache/pacman/pkg/* 

./setup_flow.sh

cd /vagrant
