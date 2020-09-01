#!/bin/bash

echo "----------------------- Start Setup Application ----------------------------"

DIR="/tmp"

$DIR/mysql/setup_mysql.sh
$DIR/nginx/setup_nginx.sh
$DIR/php_my_admin/setup_phpadmin.sh
$DIR/ssl/setup_ssl.sh
$DIR/wordpress/setup_wordpress.sh

bash

echo "----------------------- Finish Setup Application ----------------------------"


