cd /vagrant
echo "### building xhprof ###"

echo "### retrieving xhprof package from AUR ###"
sudo -u vagrant  wget https://aur.archlinux.org/packages/ph/php-xhprof/php-xhprof.tar.gz
sudo -u vagrant tar -xf php-xhprof.tar.gz
sudo -u vagrant rm php-xhprof.tar.gz

echo "### making package ###"
cd php-xhprof
sudo -u vagrant makepkg

echo "### installing xhprof package ###"
sudo pacman -U `ls | grep php-xhprof` --noconfirm

echo "### cleaning up ###"
cd ..
sudo -u vagrant rm -rf php-xhprof

cd /vagrant