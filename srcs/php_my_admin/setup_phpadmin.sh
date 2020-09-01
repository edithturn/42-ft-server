#!/bin/bash

echo "----------------------- Start Php Admin ----------------------------"

PACKAGE="phpMyAdmin-5.0.2-english.tar.gz"
PHP_ADMIN_PATH="/var/www/html/phpmyadmin"
DIR="/tmp/php_my_admin"

echo "Setting phpadmin"
mkdir $PHP_ADMIN_PATH
#cp $DIR/$PACKAGE $PHP_ADMIN_PATH
tar -xvf $DIR/$PACKAGE  -C $PHP_ADMIN_PATH

echo "----------------------- Finish Php Admin ----------------------------"
