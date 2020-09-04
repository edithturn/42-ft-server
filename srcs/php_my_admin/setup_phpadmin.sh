#!/bin/bash

echo ""
echo "--------------------- Start Php Admin --------------------------"


PACKAGE="phpMyAdmin-5.0.2.tar.gz"
PHPADM_PATH="/var/www/localhost/phpmyadmin"
APP_PATH="/var/www/localhost"
TMP_DIR="/tmp/php_my_admin"

echo "Setting phpadmin"
mkdir $PHPADM_PATH
# Unpacking with show the logs on terminal
tar -xvf  $TMP_DIR/$PACKAGE -C $APP_PATH  > /dev/null
mv $APP_PATH/phpMyAdmin-5.0.2-english/* $PHPADM_PATH
rm -r $APP_PATH/phpMyAdmin-5.0.2-english

# Adding the phpadmin configuration | remember change server parameter, in this case is "localhost"
cp $TMP_DIR/config.inc.php $PHPADM_PATH

service php7.3-fpm start