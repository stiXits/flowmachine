sudo pacman -Syu
sudo pacman -S base-devel apache php php-apache mariadb

#install composer
wget https://aur.archlinux.org/packages/ph/php-composer/php-composer.tar.gz
tar -xf php-composer.tar.gz
rm php-composer.tar.gz
cd php-composer
makepkg
