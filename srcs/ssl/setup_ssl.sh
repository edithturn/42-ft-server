#!/bin/bash

echo ""
echo "----------------------- Start SSL ----------------------------"

# Varaibles
SSL_PATH=/etc/nginx/ssl

mkdir $SSL_PATH
chmod -R 600 $SSL_PATH
# Generate key and pem
openssl req -newkey rsa:4096 -x509 -sha256 -days 3650 -nodes -out $SSL_PATH/localhost.pem -keyout $SSL_PATH/localhost.key -subj "/C=US/ST=Californa/L=Fremont/O=42/OU=epuclla/CN=localhost"