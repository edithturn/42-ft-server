#!/bin/bash
NGINX_CONF=/etc/nginx/sites-available/localhost
sed -i "s/autoindex off;/autoindex on;/g" $NGINX_CONF

service nginx restart