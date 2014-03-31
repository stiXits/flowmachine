echo "### building xhprof ###"

echo "### retrieving xhprof package from AUR ###"
wget https://aur.archlinux.org/packages/ph/php-xhprof/php-xhprof.tar.gz
tar -xf php-xhprof.tar.gz
rm php-xhprof.tar.gz

echo "### making package ###"
cd php-xhprof
makepkg

echo "### installing xhprof package ###"
sudo pacman -U `ls | grep php-xhprof` --noconfirm

echo "### cleaning up ###"
cd ..
rm -rf php-xhprof

cd /vagrant