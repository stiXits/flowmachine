cd /vagrant

#install composer
echo "### retrieving composer package from AUR ###"
sudo -u wget https://aur.archlinux.org/packages/ph/php-composer/php-composer.tar.gz
sudo -u tar -xf php-composer.tar.gz
sudo -u rm php-composer.tar.gz

echo "### making package ###"
cd php-composer
sudo -u vagrant makepkg

echo "### installing composer package ###"
sudo pacman -U `ls | grep php-composer` --noconfirm

echo "### cleaning up ###"
cd ..
sudo -u rm -rf php-composer

cd /vagrant