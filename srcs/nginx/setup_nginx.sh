#!/bin/bash

echo "----------------------- Start Nginx ---------------------------- \n"

SITE_AVAILABLE="/etc/nginx/sites-available"
SITE_ENABLED="/etc/nginx/sites-enabled"
DIR="/tmp/nginx"

service nginx start
cp $DIR/nginx.conf $SITE_AVAILABLE/localhost
ln -s $SITE_AVAILABLE/localhost $SITE_ENABLED/localhost
rm -rf $SITE_ENABLED/default

echo "----------------------- Finish Nginx ---------------------------- \n"