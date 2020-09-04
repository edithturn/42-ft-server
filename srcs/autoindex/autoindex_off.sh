#!/bin/bash

NGINX_CONF=/etc/nginx/sites-available/localhost
sed -i "s/autoindex on;/autoindex off;/g" $NGINX_CONF

service nginx restart

