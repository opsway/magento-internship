#!/usr/bin/env bash

# Update nginx vhosts
echo "Used host: $APP_HOST"
sed -i 's/${APP_HOST}/'$APP_HOST'/g' /etc/nginx/sites-available/*.conf

# Start nginx server
nginx -g 'daemon off;'
