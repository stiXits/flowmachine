UPDATE mysql.user SET Password=PASSWORD('toor') WHERE User='root';
FLUSH PRIVILEGES;