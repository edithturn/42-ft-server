#!/bin/bash

echo ""
echo "------------------------- Start Nginx -------------------------"

SITE_AVAILABLE="/etc/nginx/sites-available"
SITE_ENABLED="/etc/nginx/sites-enabled"
TMP_DIR="/tmp/nginx"

service nginx start
cp $TMP_DIR/nginx.conf $SITE_AVAILABLE/localhost
ln -s $SITE_AVAILABLE/localhost $SITE_ENABLED/localhost
rm -rf $SITE_ENABLED/default

# Checking is nginx is working fine
nginx -t

service nginx restart