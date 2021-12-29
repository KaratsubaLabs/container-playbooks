#!/bin/sh

# make sure to run the following beforehand:
# certbot register --agree-tos -m "responsible-admin@example.com" 

certbot certonly --preferred-challenges http-01 --webroot -w /etc/lighttpd/certbot -d $1
