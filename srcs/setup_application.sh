#!/bin/bash

echo ""
echo "~~~~~~~~~~~~~~~~~~~ START SETUP APPLICATION ~~~~~~~~~~~~~~~~~~~"

TEMP_DIR="/tmp"
APP_PATH="/var/www/localhost"

# The directory name should be the same as your domain.
mkdir $APP_PATH

$TEMP_DIR/ssl/setup_ssl.sh
$TEMP_DIR/nginx/setup_nginx.sh
$TEMP_DIR/mysql/setup_mysql.sh
$TEMP_DIR/php_my_admin/setup_phpadmin.sh
$TEMP_DIR/wordpress/setup_wordpress.sh

bash