#!/bin/sh -x
PWD=`pwd`
docker run -it \
    -p 8000:80 \
    -v $PWD/conf:/etc/nginx/conf.d \
    -v $PWD/logs:/var/log/nginx \
    -v $PWD/html:/var/www \
    nginx 
