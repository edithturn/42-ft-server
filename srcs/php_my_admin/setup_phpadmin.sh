#!/bin/bash

echo ""
echo "----------------------- Start Php Admin ----------------------------"


PACKAGE="phpMyAdmin-5.0.2.tar.gz"
PHPADM_PATH="/var/www/localhost/phpmyadmin"
APP_PATH="/var/www/localhost"
DIR="/tmp/php_my_admin"

echo "Setting phpadmin"
mkdir $PHPADM_PATH
tar -xvf  $DIR/$PACKAGE -C $APP_PATH  > /dev/null
mv $APP_PATH/phpMyAdmin-5.0.2-english/* $PHPADM_PATH
rm -r $APP_PATH/phpMyAdmin-5.0.2-english

service php7.3-fpm start