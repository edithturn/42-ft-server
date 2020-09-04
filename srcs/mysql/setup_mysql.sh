#!/bin/bash

echo ""
echo "------------------------ Start Mysql -----------------------------"
service mysql start

echo "Creating database"
mysql --user=root --password=toor << EOF
CREATE DATABASE db_wordpress CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL ON db_wordpress.* TO admin @'localhost' IDENTIFIED BY 'admin';
FLUSH PRIVILEGES;
EOF