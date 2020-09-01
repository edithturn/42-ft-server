#!/bin/bash

echo "----------------------- Start Wordpress ----------------------------"

WORDPRESS_PKG="wordpress-5.5.tar.gz"
WORDPRESS_PATH="/var/www/html"
DIR="/tmp/wordpress"

#cp $WORDPRESS_PKG	 $WORDPRESS_PATH
tar -zxf $DIR/$WORDPRESS_PKG  -C $WORDPRESS_PATH
mv $WORDPRESS_PATH/wordpress/* $WORDPRESS_PATH
rm -r $WORDPRESS_PATH/wordpress
#rm  $WORDPRESS_PATH/$WORDPRESS_PKG

chown -R www-data:www-data /var/www/*
chmod -R 755 /var/www/*

echo "----------------------- Finish Wordpress ----------------------------"

