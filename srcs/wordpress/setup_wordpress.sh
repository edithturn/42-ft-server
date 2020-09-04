#!/bin/bash

echo ""
echo "--------------------- Start Wordpress --------------------------"

WORDPRESS_PKG="wordpress-5.5.tar.gz"
WORDPRESS_PATH="/var/www/localhost"
TMP_DIR="/tmp/wordpress"

# Unpacking wordpress
tar -zxf $TMP_DIR/$WORDPRESS_PKG -C $WORDPRESS_PATH
chown -R www-data:www-data  $WORDPRESS_PATH

# Copying worpress configuration
cp $TMP_DIR/wp-config.php $WORDPRESS_PATH/wordpress