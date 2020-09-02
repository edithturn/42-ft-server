#!/bin/bash

echo ""
echo "------------------- START SETUP APPLICATION ------------------"

TEMP_DIR="/tmp"
APP_PATH="/var/www/localhost"

# The name should be the same as your domain.
mkdir $APP_PATH

# Creating General Web Page in php
touch $APP_PATH/index.php
echo "<?php phpinfo(); ?>" >> /var/www/localhost/index.php

$TEMP_DIR/ssl/setup_ssl.sh
$TEMP_DIR/nginx/setup_nginx.sh
$TEMP_DIR/mysql/setup_mysql.sh
$TEMP_DIR/php_my_admin/setup_phpadmin.sh
$TEMP_DIR/wordpress/setup_wordpress.sh

bash