#!/bin/bash

cd /etc/nginx
openssl req \
  -x509 \
  -nodes \
  -days 365 \
  -newkey rsa:2048 \
  -subj "/C=US/ST=Arizona/L=Phoenix/O=Dis/CN=clairvoyance.app" \
  -keyout /etc/nginx/cert.key \
  -out /etc/nginx/cert.crt

nginx -g 'daemon off;'
