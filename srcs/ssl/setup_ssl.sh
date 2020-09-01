#!/bin/bash

echo "----------------------- Start SSL ----------------------------"


mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 3650 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key \
-subj "/C=US/ST=Calforna/L=Fremont/O=42/OU=epuclla/CN=localhost"

echo "----------------------- Finish SSL ----------------------------"