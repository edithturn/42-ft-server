#!/bin/bash

echo ""
echo "----------------------- Start Wordpress ----------------------------"

WORDPRESS_PKG="wordpress-5.5.tar.gz"
WORDPRESS_PATH="/var/www/localhost"
DIR="/tmp/wordpress"

#mkdir $WORDPRESS_PATH
echo "unpacking wordpress on " $WORDPRESS_PATH
tar -zxf $DIR/$WORDPRESS_PKG -C $WORDPRESS_PATH
#mv $WORDPRESS_PATH/wordpress-5.5/* $WORDPRESS_PATH
#rm -r $WORDPRESS_PATH/wordpress-5.5
chown -R www-data:www-data /var/www/localhost
#chmod -R 755 /var/www/*