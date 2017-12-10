#!/bin/sh

echo "Launching nginx..."

envsubst '${books_api_url}' < /etc/nginx/conf.d/default.conf > /tmp/default.conf

cp /tmp/default.conf /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"

