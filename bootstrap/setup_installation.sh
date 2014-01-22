echo "### performing full system upgrade ###"
sudo pacman -Syu --noconfirm

echo "### installing startup packages ###"
sudo pacman -S base-devel apache php php-apache mariadb expect git htop --noconfirm