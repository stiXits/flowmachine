echo "### performing full system upgrade ###"
sudo pacman -Syu --noconfirm

echo "### installing startup packages ###"
sudo pacman -S base-devel apache php php-apache php-xsl mariadb expect git htop mlocate yaourt --noconfirm

sudo updatedb

echo "### freeing space by clearing pacman space ###"
sudo pacman -Scc --noconfirm