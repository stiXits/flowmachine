cd /vagrant

#install composer
echo "### retrieving composer package from AUR ###"
wget https://aur.archlinux.org/packages/ph/php-composer/php-composer.tar.gz
tar -xf php-composer.tar.gz
rm php-composer.tar.gz

echo "### making package ###"
cd php-composer
makepkg

cd /vagrant