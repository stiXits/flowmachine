cd /vagrant

#install composer
echo "### retrieving composer package from AUR ###"
sudo -u vagrant  wget https://aur.archlinux.org/packages/ph/php-composer/php-composer.tar.gz
sudo -u vagrant tar -xf php-composer.tar.gz
sudo -u vagrant rm php-composer.tar.gz

echo "### making package ###"
cd php-composer
sudo -u vagrant makepkg

echo "### installing composer package ###"
sudo pacman -U `ls | grep php-composer` --noconfirm

echo "### cleaning up ###"
cd ..
sudo -u vagrant rm -rf php-composer

cd /vagrant