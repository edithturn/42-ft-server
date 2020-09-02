#!/bin/bash

echo ""
echo "----------------------- Start SSL ----------------------------"

mkdir /etc/nginx/ssl
chmod -R 600 /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 3650 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj "/C=US/ST=Californa/L=Fremont/O=42/OU=epuclla/CN=localhost"