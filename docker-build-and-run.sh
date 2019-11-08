#!/usr/bin/env bash
docker build -t php-demo .
docker rm -f php-demo && true >& /dev/null
docker run -d -p 8090:80 --name php-demo php-demo
