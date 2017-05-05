#!/bin/bash

# gen dh
if [ ! -f /etc/nginx/ssl/dhparams.pem ]; then
    echo "make dhparams"
    mkdir -p /etc/nginx/ssl
    cd /etc/nginx/ssl
    openssl dhparam -out dhparams.pem 2048
    chmod 600 dhparams.pem
fi

# start nginx
nginx -g "daemon off;"
